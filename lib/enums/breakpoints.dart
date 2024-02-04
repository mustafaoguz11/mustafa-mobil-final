// Material 3 design specifications
// https://m3.material.io/foundations/layout/applying-layout/window-size-classes
enum Breakpoints {
  mobile(600),
  tablet(840),
  desktop(1200);

  const Breakpoints(this.width);
  final int width;
}
