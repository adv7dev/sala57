import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['pt'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ptText = '',
    String enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'diy011rk': {
      'pt': 'Entrar',
      'en': '',
    },
    'xu5kp49v': {
      'pt': '',
      'en': '',
    },
    '8rug0j3x': {
      'pt': 'E-mail',
      'en': '',
    },
    'qau4e318': {
      'pt': '',
      'en': '',
    },
    'sxgp44rv': {
      'pt': 'Senha',
      'en': '',
    },
    'v7gfc6om': {
      'pt': 'Entrar',
      'en': '',
    },
    '9zy14ynu': {
      'pt': 'Esqueceu sua Senha?',
      'en': '',
    },
    'o75exzdc': {
      'pt': 'Ou use uma rede social ',
      'en': '',
    },
    'kodvw0zk': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'owerg0ei': {
      'pt': '',
      'en': '',
    },
    '9vdijmft': {
      'pt': 'E-mail',
      'en': '',
    },
    'ajf0chib': {
      'pt': '',
      'en': '',
    },
    '9osy2x6i': {
      'pt': 'Senha',
      'en': '',
    },
    'jjdla04b': {
      'pt': '',
      'en': '',
    },
    'ck4qmwsm': {
      'pt': 'Confirmar Senha',
      'en': '',
    },
    'h1x8h5l8': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'w7145msc': {
      'pt': 'Ou use uma rede social para criar uma conta',
      'en': '',
    },
    'mojogntf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // social
  {
    'g0xyyrjn': {
      'pt': '@username',
      'en': '',
    },
    '4mnl75zc': {
      'pt': '2,493',
      'en': '',
    },
    'n34ac4re': {
      'pt': '4',
      'en': '',
    },
    'rss834zr': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.??? ',
      'en': '',
    },
    'ag5oev8x': {
      'pt': 'EXPERI??NCIAS',
      'en': '',
    },
    '6ujbze1q': {
      'pt': 'Publique a sua aqui...',
      'en': '',
    },
    'ycp68zco': {
      'pt': 'Ora????es',
      'en': '',
    },
  },
  // createYourProfile
  {
    '57fuznxt': {
      'pt': 'Complete seu Perfil',
      'en': '',
    },
    '7nqbvosk': {
      'pt': '2/2',
      'en': '',
    },
    'yne7aif7': {
      'pt': 'Preencha seu perfil agora para concluir as configura????es.',
      'en': '',
    },
    'rya0aotv': {
      'pt': 'Nome e Sobrenome',
      'en': '',
    },
    'f9q5z0nl': {
      'pt': 'Nome de Usu??rio',
      'en': '',
    },
    't0bbrook': {
      'pt': '@',
      'en': '',
    },
    '358tkmj3': {
      'pt': 'Conte-nos sobre voc??!',
      'en': '',
    },
    'p6uipik9': {
      'pt': 'Complete Setup',
      'en': '',
    },
    'f90j47v7': {
      'pt': 'Home',
      'en': '',
    },
  },
  // homePage
  {
    '9pexqdzk': {
      'pt': 'MEDITA????O | ',
      'en': 'MEDITATION |',
    },
    '6p2aha33': {
      'pt':
          'Toque para visulizar a medita????o de hoje...   comece o  dia com Deus...',
      'en': '',
    },
    '153bgkpv': {
      'pt': '??LTIMA SALA 57 AO VIVO',
      'en': '',
    },
    '5t723jr7': {
      'pt': 'Ver mais v??deos publicados',
      'en': '',
    },
    '3mlqf5lp': {
      'pt': 'PEDIDOS DE ORA????O',
      'en': '',
    },
    'xlimfnf8': {
      'pt': 'MEDITA????ES',
      'en': '',
    },
    'ut85an5t': {
      'pt': 'P.  DE ORA????O',
      'en': '',
    },
    '2tqf4434': {
      'pt': 'V??DEOS SALA57',
      'en': '',
    },
    'mtarxfqn': {
      'pt': 'In??cio',
      'en': 'home',
    },
  },
  // forgotPassword
  {
    'pfk2gxxq': {
      'pt': 'Forgot Password',
      'en': '',
    },
    'zkf4l67j': {
      'pt': 'Enter your email',
      'en': '',
    },
    '51ah7rdc': {
      'pt':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    'e19iwtqz': {
      'pt': 'Send Reset Link',
      'en': '',
    },
    'mnjh01wg': {
      'pt': 'Home',
      'en': '',
    },
  },
  // profilePage
  {
    '8jzc6qfv': {
      'pt': 'Publicar',
      'en': '',
    },
    '5jqt5w76': {
      'pt': 'Configura????es',
      'en': '',
    },
    'tgrv6mif': {
      'pt': 'Meus Pedidos de ora????o',
      'en': '',
    },
    'vbaahdnb': {
      'pt': 'Meus Pedidos de Ora????o',
      'en': '',
    },
    'rvzh60az': {
      'pt': '@username',
      'en': '',
    },
    'relnz42w': {
      'pt': '2,493',
      'en': '',
    },
    'ke1zn69e': {
      'pt': '4',
      'en': '',
    },
    'bn27no21': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.??? ',
      'en': '',
    },
    'dywwzovd': {
      'pt': 'Perfil',
      'en': '',
    },
  },
  // createPost
  {
    'o9v9sg2i': {
      'pt': 'Pedir Ora????o',
      'en': '',
    },
    'mnrwdjj9': {
      'pt': 'Titulo da Ora????o',
      'en': '',
    },
    'zrp1kvg1': {
      'pt': 'Enviar Pedido de Ora????o',
      'en': '',
    },
    '8pjo7crm': {
      'pt': 'Home',
      'en': '',
    },
  },
  // postDetails
  {
    '3f87t3fr': {
      'pt': 'Coment??rios',
      'en': '',
    },
    'by6tbhrb': {
      'pt': 'Postado: ',
      'en': '',
    },
    'luqdjm70': {
      'pt': 'Comentar',
      'en': '',
    },
    'osy1bzhp': {
      'pt': 'Publicar',
      'en': '',
    },
    'pyl32c16': {
      'pt': 'In??cio',
      'en': '',
    },
  },
  // editSettings
  {
    's4rc4p54': {
      'pt': 'Configura????es da conta',
      'en': '',
    },
    'u0ab2zsq': {
      'pt': 'Editar Perfil',
      'en': '',
    },
    'mdlzf3fn': {
      'pt': 'Mudar a Senha',
      'en': '',
    },
    'elifqk0u': {
      'pt': 'Sair',
      'en': '',
    },
    'j1gaxnm5': {
      'pt': 'Configura????es',
      'en': '',
    },
    '9xmla108': {
      'pt': 'Perfil',
      'en': '',
    },
  },
  // editUserProfile
  {
    'respmxkq': {
      'pt': 'Editar Perfil',
      'en': '',
    },
    'h33ozyyv': {
      'pt': 'Altere as configura????es do seu perfil...',
      'en': '',
    },
    'g9tuuqw7': {
      'pt': 'Seu Nome',
      'en': '',
    },
    'el4i7z4u': {
      'pt': 'nome de usu??rio',
      'en': '',
    },
    'wtevvp0a': {
      'pt': 'Sobre Voc??',
      'en': '',
    },
    'v8g2ebgo': {
      'pt': 'Salvar Altera????es',
      'en': '',
    },
    'qvf0hf1e': {
      'pt': 'Home',
      'en': '',
    },
  },
  // changePassword
  {
    'fk49gx15': {
      'pt': 'Mudar senha',
      'en': '',
    },
    'jv4xylai': {
      'pt': 'Digite seu e-mail',
      'en': '',
    },
    'iy30awec': {
      'pt':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    '92yfxidv': {
      'pt': 'Enviar link de redefini????o',
      'en': '',
    },
    'lfuxxtiq': {
      'pt': 'In??cio',
      'en': '',
    },
  },
  // viewProfilePageOther
  {
    'vkeuv7ij': {
      'pt': 'Enviar Mensagem',
      'en': '',
    },
    'nr8uwwgl': {
      'pt': 'Pedidos de Ora????es',
      'en': '',
    },
    'nu16yc6o': {
      'pt': 'Pedidos de Ora????o',
      'en': '',
    },
    'yoz1wjk1': {
      'pt': '@username',
      'en': '',
    },
    '6prj4no2': {
      'pt': '2,493',
      'en': '',
    },
    'op3p44b2': {
      'pt': '4',
      'en': '',
    },
    '8lhhfdgs': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.??? ',
      'en': '',
    },
    'c0fy3asd': {
      'pt': 'Perfil',
      'en': '',
    },
  },
  // chatPage
  {
    'o6ycg65w': {
      'pt': 'Grupo',
      'en': '',
    },
    '5nl10flt': {
      'pt': 'In??cio',
      'en': '',
    },
  },
  // allChatsPage
  {
    '80ko590x': {
      'pt': 'Mensagens',
      'en': '',
    },
    '3qig93fq': {
      'pt': 'Mensagens',
      'en': '',
    },
  },
  // addChatUsers
  {
    'durb8bgz': {
      'pt': 'Converar com Algu??m',
      'en': '',
    },
    '09q918fy': {
      'pt': 'Selecione com quem voc?? deseja conversar.',
      'en': '',
    },
    'zdesyxlo': {
      'pt': 'Pesquisar',
      'en': '',
    },
    'gbp444q7': {
      'pt': 'Chamar',
      'en': '',
    },
    '6kdxrpy6': {
      'pt': 'Home',
      'en': '',
    },
  },
  // createGroupChat
  {
    'r4s04ya3': {
      'pt': 'Criar Grupo de Ora????o',
      'en': '',
    },
    'fxsjbgwh': {
      'pt': 'Selecione as pessoas para conversar...',
      'en': '',
    },
    'v60ngah2': {
      'pt': 'Pesquisar...',
      'en': '',
    },
    'gwdpno24': {
      'pt': 'Criar Grupo',
      'en': '',
    },
    '80q2vqug': {
      'pt': 'Home',
      'en': '',
    },
  },
  // page_videos_sala57
  {
    'p41kh2tb': {
      'pt': 'Videos Sala57',
      'en': '',
    },
    'scqfkdeu': {
      'pt': 'Home',
      'en': '',
    },
  },
  // meditacoes
  {
    '3ge8juk0': {
      'pt': 'Medita????es',
      'en': '',
    },
    'nx6caz5b': {
      'pt': 'Toque para visulizar a medita????o de hoje...',
      'en': '',
    },
    'nev5sh53': {
      'pt': 'Home',
      'en': '',
    },
  },
  // comments
  {
    '9oufay6f': {
      'pt': 'Coment??rio',
      'en': 'Coment??rio',
    },
    'vtdt28il': {
      'pt': 'Posted',
      'en': '',
    },
    'mu8xh6ye': {
      'pt': 'Comentar',
      'en': 'Comentar',
    },
    '94rh264c': {
      'pt': 'Publicar',
      'en': '',
    },
  },
  // createModal
  {
    'pmphyy23': {
      'pt': 'Perdir Ora????o',
      'en': '',
    },
    'gukmr1o5': {
      'pt': 'Share a photo that will appear in the timeline.',
      'en': '',
    },
    'o2qfpany': {
      'pt': 'Create Post',
      'en': '',
    },
    'k8s4bryi': {
      'pt': 'Share photos on your timeline.',
      'en': '',
    },
  },
  // deletePost
  {
    '4kpmr2x6': {
      'pt': 'Deletar Ora????o',
      'en': '',
    },
    'nvj12bf4': {
      'pt': 'Cancelar',
      'en': '',
    },
  },
  // add_meditacao
  {
    'tod59k6y': {
      'pt': 'Titulo',
      'en': '',
    },
    'z20ibev9': {
      'pt': 'Texto',
      'en': '',
    },
    '1u1jucyi': {
      'pt': 'url',
      'en': '',
    },
    'ky4fquha': {
      'pt': 'ADD',
      'en': '',
    },
  },
  // add_Pedido_oracao
  {
    'nslznhrj': {
      'pt': 'Pedido de Ora????o',
      'en': '',
    },
    'gb6dev8e': {
      'pt': 'Detalhes do Pedido',
      'en': '',
    },
    'kaonb5lj': {
      'pt': 'Enviar Pedido',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '62mrjvfe': {
      'pt': '',
      'en': '',
    },
    '8vp9tdh2': {
      'pt': '',
      'en': '',
    },
    '6sgzbk0w': {
      'pt': '',
      'en': '',
    },
    '5cqdre5w': {
      'pt': '',
      'en': '',
    },
    'o7hsylzy': {
      'pt': '',
      'en': '',
    },
    'vlrygt16': {
      'pt': '',
      'en': '',
    },
    'mhoqevp2': {
      'pt': '',
      'en': '',
    },
    'osz5v5le': {
      'pt': '',
      'en': '',
    },
    '5a85nitd': {
      'pt': '',
      'en': '',
    },
    'rf51vopr': {
      'pt': '',
      'en': '',
    },
    'pxzge82h': {
      'pt': '',
      'en': '',
    },
    'fe2w1xdy': {
      'pt': '',
      'en': '',
    },
    'wvdeo8ft': {
      'pt': '',
      'en': '',
    },
    'rk7ynnrp': {
      'pt': '',
      'en': '',
    },
    '0av1ys2u': {
      'pt': '',
      'en': '',
    },
    'pg1zcs67': {
      'pt': '',
      'en': '',
    },
    'eqzriha2': {
      'pt': '',
      'en': '',
    },
    'dbpdwce2': {
      'pt': '',
      'en': '',
    },
    '57ww6ook': {
      'pt': '',
      'en': '',
    },
    'uor4zpsk': {
      'pt': '',
      'en': '',
    },
    'fkmic9ss': {
      'pt': '',
      'en': '',
    },
    'wa0kqodz': {
      'pt': '',
      'en': '',
    },
    'xkv43bb3': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
