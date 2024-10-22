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
final kverf = 'verf'.png;
final kforgot = 'forgot'.png;
final kchpass = 'chpass'.png;
final krefresh = 'refresh'.png;
final kcalender = 'calender'.png;
final kon_1 = 'on_1'.png;
final kon_2 = 'on_2'.png;
final kon_3 = 'on_3'.png;
final knext = 'Group 1'.png;
final kprofile = 'profile'.png;
final kcamera = 'camera'.png;
final kuser = 'icon_User_Edit'.png;
final klogout = 'icon_log_out'.png;
final kcog = 'icon _cog'.png;
final kglobe = 'icon _Globe'.png;
final kcontract = 'icon_contract'.png;
final kgoto = 'Solid'.png;

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

