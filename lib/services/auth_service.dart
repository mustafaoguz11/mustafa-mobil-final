import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authService = Provider((ref) => const AuthService());

final class AuthService {
  const AuthService();

  FirebaseAuth get _auth =>
      FirebaseAuth.instance; //Auth işlemleri için instance
  FirebaseFirestore get _store =>
      FirebaseFirestore.instance; //Firestore işlemleri için instance
  FirebaseStorage get _storage =>
      FirebaseStorage.instance; //Storage işlemleri için instance

  User? get user => _auth.currentUser; //Şuan ki user'ı alan get
  get storeInfo =>
      _store.collection('users').doc(user?.uid); //Firestore adresini alan get
  Stream<User?> get authState => _auth
      .authStateChanges(); //user'ın aktif halini kontrol etmeyi sağlayan get

  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        //Firebase'in kendi fonksiyonu email ve password ile giriş için
        email: email,
        password: password,
      );
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future getUser() async {
    if (user?.uid.isEmpty ?? true) {
      return;
    }
    final userDoc = await storeInfo.get();
    //Firebase'in kendi fonksiyonu firestore da kayıtlı bilgileri almak için
    if (!userDoc.exists) {
      return;
    }
    final userData = userDoc.data();
    return userData;
  }

  Future<String> uploadImage({pickedFile}) async {
    try {
      if (kIsWeb) //sadece web'de çalışması için webde dosya yükleme datalar ile gerçekleşiyor
      {
        final path = '/files${pickedFile.name}';
        final file = pickedFile.bytes;
        final upload = await _storage.ref().child(path).putData(
            file); //Firebase'in kendi fonksiyonu storage a dosya yüklemek için
        final imageUrl = upload.ref
            .getDownloadURL(); // Firebase'in kendi fonksiyonu yüklenen dosyanın indirme linki
        return imageUrl;
      } else //android ve ios da yapması için
      {
        final path = '/files${pickedFile.name}';
        final file = File(pickedFile.path);
        final upload = await _storage.ref().child(path).putFile(
            file); //Firebase'in kendi fonksiyonu storage a dosya yüklemek için
        final imageUrl = upload.ref
            .getDownloadURL(); // Firebase'in kendi fonksiyonu yüklenen dosyanın indirme linki
        return imageUrl;
      }
    } catch (e) {
      log('Error updating user display name: $e');
      rethrow;
    }
  }

  Future<void> updateUserName({required String userDisplayName}) async {
    try {
      if (user != null) {
        await user?.updateDisplayName(userDisplayName);
        // Firebase'in kendi fonksiyonu user içindeki displayName güncellemek için
      }
    } catch (e) {
      log('Error updating user display name: $e');
      rethrow;
    }
  }

  Future updateProfile({
    String? imageUrl,
    String? twitterUrl,
    String? instagramUrl,
    String? userDisplayName,
    String? githubUrl,
    String? linkedInUrl,
    String? phone,
  }) async {
    if (user != null) {
      storeInfo.set({
        "imageUrl": imageUrl ?? '',
        "twitterUrl": twitterUrl ?? '',
        "instagramUrl": instagramUrl ?? '',
        "userDisplayName": userDisplayName ?? '',
        "githubUrl": githubUrl ?? '',
        "linkedInUrl": linkedInUrl ?? '',
        "phone": phone ?? '',
      });
      //Adresini aldığımız storeInfo ile profil bilgilerini firestore a gönderdiğimiz fonksiyon
    }
  }

  Future<UserCredential> register({
    required String email,
    required String password,
  }) async {
    try {
      final createdUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //Firebase kendi fonksiyonu email ve password ile kullanıcı oluşturmak için

      await _store.collection('users').doc(createdUser.user?.uid).set({
        "email": email,
      });
      //oluşturulan kullanıcıyı firestore a göndermek için
      return createdUser;
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<void> forgotPw(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      //Firebase'in kendi şifremi unuttum fonksiyonu
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<void> removeUser() async {
    try {
      await user!.delete();
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    //Firebase'in kendi çıkış fonksiyonu
  }
}
