// file directory
const pngDir = "assets/pngs";
const svgDir = "assets/svgs";
const animDir = "assets/anim";

/// Onboarding
final klogo = 'Logo'.png;
final klogo2 = 'Logo2'.png;
final kbackground1 = 'singInbackground'.png;
final ktwitter = 'twitter'.png;
final kgmail = 'gmail'.png;
final kfacebook = 'facebook'.png;
final kfruit = 'fruit'.png;

extension AssetExt on String {
  get goPng {
    return "assets/goicons/$this.png";
  }

  String get png {
    return "$pngDir/$this.png";
  }

  String get svg {
    return "$svgDir/$this.svg";
  }

  get gif {
    return "$animDir/$this.gif";
  }
}


// 

