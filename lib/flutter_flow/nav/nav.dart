import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : StartWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : StartWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: StartWidget.routeName,
          path: StartWidget.routePath,
          builder: (context, params) => StartWidget(),
        ),
        FFRoute(
          name: Category3Widget.routeName,
          path: Category3Widget.routePath,
          builder: (context, params) => Category3Widget(),
        ),
        FFRoute(
          name: Category6Widget.routeName,
          path: Category6Widget.routePath,
          builder: (context, params) => Category6Widget(),
        ),
        FFRoute(
          name: Book33Widget.routeName,
          path: Book33Widget.routePath,
          builder: (context, params) => Book33Widget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: EditprofileWidget.routeName,
          path: EditprofileWidget.routePath,
          builder: (context, params) => EditprofileWidget(),
        ),
        FFRoute(
          name: Art61Widget.routeName,
          path: Art61Widget.routePath,
          builder: (context, params) => Art61Widget(),
        ),
        FFRoute(
          name: Pen38Widget.routeName,
          path: Pen38Widget.routePath,
          builder: (context, params) => Pen38Widget(),
        ),
        FFRoute(
          name: Assignment62Widget.routeName,
          path: Assignment62Widget.routePath,
          builder: (context, params) => Assignment62Widget(),
        ),
        FFRoute(
          name: Pencil39Widget.routeName,
          path: Pencil39Widget.routePath,
          builder: (context, params) => Pencil39Widget(),
        ),
        FFRoute(
          name: Desk35Widget.routeName,
          path: Desk35Widget.routePath,
          builder: (context, params) => Desk35Widget(),
        ),
        FFRoute(
          name: Chair34Widget.routeName,
          path: Chair34Widget.routePath,
          builder: (context, params) => Chair34Widget(),
        ),
        FFRoute(
          name: English63Widget.routeName,
          path: English63Widget.routePath,
          builder: (context, params) => English63Widget(),
        ),
        FFRoute(
          name: Board32Widget.routeName,
          path: Board32Widget.routePath,
          builder: (context, params) => Board32Widget(),
        ),
        FFRoute(
          name: Exam64Widget.routeName,
          path: Exam64Widget.routePath,
          builder: (context, params) => Exam64Widget(),
        ),
        FFRoute(
          name: Eraser36Widget.routeName,
          path: Eraser36Widget.routePath,
          builder: (context, params) => Eraser36Widget(),
        ),
        FFRoute(
          name: Geography65Widget.routeName,
          path: Geography65Widget.routePath,
          builder: (context, params) => Geography65Widget(),
        ),
        FFRoute(
          name: Ruler310Widget.routeName,
          path: Ruler310Widget.routePath,
          builder: (context, params) => Ruler310Widget(),
        ),
        FFRoute(
          name: Highlighter66Widget.routeName,
          path: Highlighter66Widget.routePath,
          builder: (context, params) => Highlighter66Widget(),
        ),
        FFRoute(
          name: Paper37Widget.routeName,
          path: Paper37Widget.routePath,
          builder: (context, params) => Paper37Widget(),
        ),
        FFRoute(
          name: Bag31Widget.routeName,
          path: Bag31Widget.routePath,
          builder: (context, params) => Bag31Widget(),
        ),
        FFRoute(
          name: History67Widget.routeName,
          path: History67Widget.routePath,
          builder: (context, params) => History67Widget(),
        ),
        FFRoute(
          name: Lecture68Widget.routeName,
          path: Lecture68Widget.routePath,
          builder: (context, params) => Lecture68Widget(),
        ),
        FFRoute(
          name: Science69Widget.routeName,
          path: Science69Widget.routePath,
          builder: (context, params) => Science69Widget(),
        ),
        FFRoute(
          name: Subject610Widget.routeName,
          path: Subject610Widget.routePath,
          builder: (context, params) => Subject610Widget(),
        ),
        FFRoute(
          name: Apple31Widget.routeName,
          path: Apple31Widget.routePath,
          builder: (context, params) => Apple31Widget(),
        ),
        FFRoute(
          name: Bacon61Widget.routeName,
          path: Bacon61Widget.routePath,
          builder: (context, params) => Bacon61Widget(),
        ),
        FFRoute(
          name: Chicken35Widget.routeName,
          path: Chicken35Widget.routePath,
          builder: (context, params) => Chicken35Widget(),
        ),
        FFRoute(
          name: Banana32Widget.routeName,
          path: Banana32Widget.routePath,
          builder: (context, params) => Banana32Widget(),
        ),
        FFRoute(
          name: Bread33Widget.routeName,
          path: Bread33Widget.routePath,
          builder: (context, params) => Bread33Widget(),
        ),
        FFRoute(
          name: Rice310Widget.routeName,
          path: Rice310Widget.routePath,
          builder: (context, params) => Rice310Widget(),
        ),
        FFRoute(
          name: Egg36Widget.routeName,
          path: Egg36Widget.routePath,
          builder: (context, params) => Egg36Widget(),
        ),
        FFRoute(
          name: Milk39Widget.routeName,
          path: Milk39Widget.routePath,
          builder: (context, params) => Milk39Widget(),
        ),
        FFRoute(
          name: Juice38Widget.routeName,
          path: Juice38Widget.routePath,
          builder: (context, params) => Juice38Widget(),
        ),
        FFRoute(
          name: Cake34Widget.routeName,
          path: Cake34Widget.routePath,
          builder: (context, params) => Cake34Widget(),
        ),
        FFRoute(
          name: Fish37Widget.routeName,
          path: Fish37Widget.routePath,
          builder: (context, params) => Fish37Widget(),
        ),
        FFRoute(
          name: ScoreSchool3Widget.routeName,
          path: ScoreSchool3Widget.routePath,
          builder: (context, params) => ScoreSchool3Widget(),
        ),
        FFRoute(
          name: ScoreSchool6Widget.routeName,
          path: ScoreSchool6Widget.routePath,
          builder: (context, params) => ScoreSchool6Widget(),
        ),
        FFRoute(
          name: ScoreFood3Widget.routeName,
          path: ScoreFood3Widget.routePath,
          builder: (context, params) => ScoreFood3Widget(),
        ),
        FFRoute(
          name: ScoreFood6Widget.routeName,
          path: ScoreFood6Widget.routePath,
          builder: (context, params) => ScoreFood6Widget(),
        ),
        FFRoute(
          name: Bird31Widget.routeName,
          path: Bird31Widget.routePath,
          builder: (context, params) => Bird31Widget(),
        ),
        FFRoute(
          name: Bird61Widget.routeName,
          path: Bird61Widget.routePath,
          builder: (context, params) => Bird61Widget(),
        ),
        FFRoute(
          name: ScoreAnimal3Widget.routeName,
          path: ScoreAnimal3Widget.routePath,
          builder: (context, params) => ScoreAnimal3Widget(),
        ),
        FFRoute(
          name: ScoreAnimal6Widget.routeName,
          path: ScoreAnimal6Widget.routePath,
          builder: (context, params) => ScoreAnimal6Widget(),
        ),
        FFRoute(
          name: Cat32Widget.routeName,
          path: Cat32Widget.routePath,
          builder: (context, params) => Cat32Widget(),
        ),
        FFRoute(
          name: Cow33Widget.routeName,
          path: Cow33Widget.routePath,
          builder: (context, params) => Cow33Widget(),
        ),
        FFRoute(
          name: Dog34Widget.routeName,
          path: Dog34Widget.routePath,
          builder: (context, params) => Dog34Widget(),
        ),
        FFRoute(
          name: Duck35Widget.routeName,
          path: Duck35Widget.routePath,
          builder: (context, params) => Duck35Widget(),
        ),
        FFRoute(
          name: Fish36Widget.routeName,
          path: Fish36Widget.routePath,
          builder: (context, params) => Fish36Widget(),
        ),
        FFRoute(
          name: Frog37Widget.routeName,
          path: Frog37Widget.routePath,
          builder: (context, params) => Frog37Widget(),
        ),
        FFRoute(
          name: Horse38Widget.routeName,
          path: Horse38Widget.routePath,
          builder: (context, params) => Horse38Widget(),
        ),
        FFRoute(
          name: Pig39Widget.routeName,
          path: Pig39Widget.routePath,
          builder: (context, params) => Pig39Widget(),
        ),
        FFRoute(
          name: Sheep310Widget.routeName,
          path: Sheep310Widget.routePath,
          builder: (context, params) => Sheep310Widget(),
        ),
        FFRoute(
          name: FriedRice62Widget.routeName,
          path: FriedRice62Widget.routePath,
          builder: (context, params) => FriedRice62Widget(),
        ),
        FFRoute(
          name: Hamburger63Widget.routeName,
          path: Hamburger63Widget.routePath,
          builder: (context, params) => Hamburger63Widget(),
        ),
        FFRoute(
          name: Salad67Widget.routeName,
          path: Salad67Widget.routePath,
          builder: (context, params) => Salad67Widget(),
        ),
        FFRoute(
          name: IceCream64Widget.routeName,
          path: IceCream64Widget.routePath,
          builder: (context, params) => IceCream64Widget(),
        ),
        FFRoute(
          name: Pasta65Widget.routeName,
          path: Pasta65Widget.routePath,
          builder: (context, params) => Pasta65Widget(),
        ),
        FFRoute(
          name: Pizza66Widget.routeName,
          path: Pizza66Widget.routePath,
          builder: (context, params) => Pizza66Widget(),
        ),
        FFRoute(
          name: Sandwich68Widget.routeName,
          path: Sandwich68Widget.routePath,
          builder: (context, params) => Sandwich68Widget(),
        ),
        FFRoute(
          name: Sausage69Widget.routeName,
          path: Sausage69Widget.routePath,
          builder: (context, params) => Sausage69Widget(),
        ),
        FFRoute(
          name: Steak610Widget.routeName,
          path: Steak610Widget.routePath,
          builder: (context, params) => Steak610Widget(),
        ),
        FFRoute(
          name: Cat62Widget.routeName,
          path: Cat62Widget.routePath,
          builder: (context, params) => Cat62Widget(),
        ),
        FFRoute(
          name: Cow63Widget.routeName,
          path: Cow63Widget.routePath,
          builder: (context, params) => Cow63Widget(),
        ),
        FFRoute(
          name: Dog64Widget.routeName,
          path: Dog64Widget.routePath,
          builder: (context, params) => Dog64Widget(),
        ),
        FFRoute(
          name: Duck65Widget.routeName,
          path: Duck65Widget.routePath,
          builder: (context, params) => Duck65Widget(),
        ),
        FFRoute(
          name: Fish66Widget.routeName,
          path: Fish66Widget.routePath,
          builder: (context, params) => Fish66Widget(),
        ),
        FFRoute(
          name: Frog67Widget.routeName,
          path: Frog67Widget.routePath,
          builder: (context, params) => Frog67Widget(),
        ),
        FFRoute(
          name: Horse68Widget.routeName,
          path: Horse68Widget.routePath,
          builder: (context, params) => Horse68Widget(),
        ),
        FFRoute(
          name: Pig69Widget.routeName,
          path: Pig69Widget.routePath,
          builder: (context, params) => Pig69Widget(),
        ),
        FFRoute(
          name: Sheep610Widget.routeName,
          path: Sheep610Widget.routePath,
          builder: (context, params) => Sheep610Widget(),
        ),
        FFRoute(
          name: Movie35Widget.routeName,
          path: Movie35Widget.routePath,
          builder: (context, params) => Movie35Widget(),
        ),
        FFRoute(
          name: Ticket310Widget.routeName,
          path: Ticket310Widget.routePath,
          builder: (context, params) => Ticket310Widget(),
        ),
        FFRoute(
          name: Cartoon33Widget.routeName,
          path: Cartoon33Widget.routePath,
          builder: (context, params) => Cartoon33Widget(),
        ),
        FFRoute(
          name: Actor31Widget.routeName,
          path: Actor31Widget.routePath,
          builder: (context, params) => Actor31Widget(),
        ),
        FFRoute(
          name: Actress32Widget.routeName,
          path: Actress32Widget.routePath,
          builder: (context, params) => Actress32Widget(),
        ),
        FFRoute(
          name: Scene37Widget.routeName,
          path: Scene37Widget.routePath,
          builder: (context, params) => Scene37Widget(),
        ),
        FFRoute(
          name: Director34Widget.routeName,
          path: Director34Widget.routePath,
          builder: (context, params) => Director34Widget(),
        ),
        FFRoute(
          name: Popcorn36Widget.routeName,
          path: Popcorn36Widget.routePath,
          builder: (context, params) => Popcorn36Widget(),
        ),
        FFRoute(
          name: Screen38Widget.routeName,
          path: Screen38Widget.routePath,
          builder: (context, params) => Screen38Widget(),
        ),
        FFRoute(
          name: Sound39Widget.routeName,
          path: Sound39Widget.routePath,
          builder: (context, params) => Sound39Widget(),
        ),
        FFRoute(
          name: ScoreMovies3Widget.routeName,
          path: ScoreMovies3Widget.routePath,
          builder: (context, params) => ScoreMovies3Widget(),
        ),
        FFRoute(
          name: ScoreMovies6Widget.routeName,
          path: ScoreMovies6Widget.routePath,
          builder: (context, params) => ScoreMovies6Widget(),
        ),
        FFRoute(
          name: Ear31Widget.routeName,
          path: Ear31Widget.routePath,
          builder: (context, params) => Ear31Widget(),
        ),
        FFRoute(
          name: Action61Widget.routeName,
          path: Action61Widget.routePath,
          builder: (context, params) => Action61Widget(),
        ),
        FFRoute(
          name: Eye32Widget.routeName,
          path: Eye32Widget.routePath,
          builder: (context, params) => Eye32Widget(),
        ),
        FFRoute(
          name: Face33Widget.routeName,
          path: Face33Widget.routePath,
          builder: (context, params) => Face33Widget(),
        ),
        FFRoute(
          name: Hair34Widget.routeName,
          path: Hair34Widget.routePath,
          builder: (context, params) => Hair34Widget(),
        ),
        FFRoute(
          name: Animation62Widget.routeName,
          path: Animation62Widget.routePath,
          builder: (context, params) => Animation62Widget(),
        ),
        FFRoute(
          name: Head35Widget.routeName,
          path: Head35Widget.routePath,
          builder: (context, params) => Head35Widget(),
        ),
        FFRoute(
          name: Mouth36Widget.routeName,
          path: Mouth36Widget.routePath,
          builder: (context, params) => Mouth36Widget(),
        ),
        FFRoute(
          name: Neck37Widget.routeName,
          path: Neck37Widget.routePath,
          builder: (context, params) => Neck37Widget(),
        ),
        FFRoute(
          name: Nose38Widget.routeName,
          path: Nose38Widget.routePath,
          builder: (context, params) => Nose38Widget(),
        ),
        FFRoute(
          name: Tongue39Widget.routeName,
          path: Tongue39Widget.routePath,
          builder: (context, params) => Tongue39Widget(),
        ),
        FFRoute(
          name: Tooth310Widget.routeName,
          path: Tooth310Widget.routePath,
          builder: (context, params) => Tooth310Widget(),
        ),
        FFRoute(
          name: ScoreBody3Widget.routeName,
          path: ScoreBody3Widget.routePath,
          builder: (context, params) => ScoreBody3Widget(),
        ),
        FFRoute(
          name: ScoreBody6Widget.routeName,
          path: ScoreBody6Widget.routePath,
          builder: (context, params) => ScoreBody6Widget(),
        ),
        FFRoute(
          name: Character63Widget.routeName,
          path: Character63Widget.routePath,
          builder: (context, params) => Character63Widget(),
        ),
        FFRoute(
          name: Comedy64Widget.routeName,
          path: Comedy64Widget.routePath,
          builder: (context, params) => Comedy64Widget(),
        ),
        FFRoute(
          name: Documentary65Widget.routeName,
          path: Documentary65Widget.routePath,
          builder: (context, params) => Documentary65Widget(),
        ),
        FFRoute(
          name: Drama66Widget.routeName,
          path: Drama66Widget.routePath,
          builder: (context, params) => Drama66Widget(),
        ),
        FFRoute(
          name: Genre67Widget.routeName,
          path: Genre67Widget.routePath,
          builder: (context, params) => Genre67Widget(),
        ),
        FFRoute(
          name: Horror68Widget.routeName,
          path: Horror68Widget.routePath,
          builder: (context, params) => Horror68Widget(),
        ),
        FFRoute(
          name: Producer69Widget.routeName,
          path: Producer69Widget.routePath,
          builder: (context, params) => Producer69Widget(),
        ),
        FFRoute(
          name: Romance610Widget.routeName,
          path: Romance610Widget.routePath,
          builder: (context, params) => Romance610Widget(),
        ),
        FFRoute(
          name: Aunt31Widget.routeName,
          path: Aunt31Widget.routePath,
          builder: (context, params) => Aunt31Widget(),
        ),
        FFRoute(
          name: Brother32Widget.routeName,
          path: Brother32Widget.routePath,
          builder: (context, params) => Brother32Widget(),
        ),
        FFRoute(
          name: Cousin33Widget.routeName,
          path: Cousin33Widget.routePath,
          builder: (context, params) => Cousin33Widget(),
        ),
        FFRoute(
          name: Family34Widget.routeName,
          path: Family34Widget.routePath,
          builder: (context, params) => Family34Widget(),
        ),
        FFRoute(
          name: Father35Widget.routeName,
          path: Father35Widget.routePath,
          builder: (context, params) => Father35Widget(),
        ),
        FFRoute(
          name: Grandfather36Widget.routeName,
          path: Grandfather36Widget.routePath,
          builder: (context, params) => Grandfather36Widget(),
        ),
        FFRoute(
          name: Brain61Widget.routeName,
          path: Brain61Widget.routePath,
          builder: (context, params) => Brain61Widget(),
        ),
        FFRoute(
          name: Grandmother37Widget.routeName,
          path: Grandmother37Widget.routePath,
          builder: (context, params) => Grandmother37Widget(),
        ),
        FFRoute(
          name: Mother38Widget.routeName,
          path: Mother38Widget.routePath,
          builder: (context, params) => Mother38Widget(),
        ),
        FFRoute(
          name: Sister39Widget.routeName,
          path: Sister39Widget.routePath,
          builder: (context, params) => Sister39Widget(),
        ),
        FFRoute(
          name: Uncle310Widget.routeName,
          path: Uncle310Widget.routePath,
          builder: (context, params) => Uncle310Widget(),
        ),
        FFRoute(
          name: Cheek62Widget.routeName,
          path: Cheek62Widget.routePath,
          builder: (context, params) => Cheek62Widget(),
        ),
        FFRoute(
          name: ScoreFamily3Widget.routeName,
          path: ScoreFamily3Widget.routePath,
          builder: (context, params) => ScoreFamily3Widget(),
        ),
        FFRoute(
          name: ScoreFamily6Widget.routeName,
          path: ScoreFamily6Widget.routePath,
          builder: (context, params) => ScoreFamily6Widget(),
        ),
        FFRoute(
          name: Eyebrow63Widget.routeName,
          path: Eyebrow63Widget.routePath,
          builder: (context, params) => Eyebrow63Widget(),
        ),
        FFRoute(
          name: Eyelash64Widget.routeName,
          path: Eyelash64Widget.routePath,
          builder: (context, params) => Eyelash64Widget(),
        ),
        FFRoute(
          name: Face65Widget.routeName,
          path: Face65Widget.routePath,
          builder: (context, params) => Face65Widget(),
        ),
        FFRoute(
          name: Forehead66Widget.routeName,
          path: Forehead66Widget.routePath,
          builder: (context, params) => Forehead66Widget(),
        ),
        FFRoute(
          name: Hair67Widget.routeName,
          path: Hair67Widget.routePath,
          builder: (context, params) => Hair67Widget(),
        ),
        FFRoute(
          name: Head68Widget.routeName,
          path: Head68Widget.routePath,
          builder: (context, params) => Head68Widget(),
        ),
        FFRoute(
          name: Pupil69Widget.routeName,
          path: Pupil69Widget.routePath,
          builder: (context, params) => Pupil69Widget(),
        ),
        FFRoute(
          name: Skull610Widget.routeName,
          path: Skull610Widget.routePath,
          builder: (context, params) => Skull610Widget(),
        ),
        FFRoute(
          name: Artist31Widget.routeName,
          path: Artist31Widget.routePath,
          builder: (context, params) => Artist31Widget(),
        ),
        FFRoute(
          name: Singer39Widget.routeName,
          path: Singer39Widget.routePath,
          builder: (context, params) => Singer39Widget(),
        ),
        FFRoute(
          name: Pilot37Widget.routeName,
          path: Pilot37Widget.routePath,
          builder: (context, params) => Pilot37Widget(),
        ),
        FFRoute(
          name: Nurse36Widget.routeName,
          path: Nurse36Widget.routePath,
          builder: (context, params) => Nurse36Widget(),
        ),
        FFRoute(
          name: Teacher310Widget.routeName,
          path: Teacher310Widget.routePath,
          builder: (context, params) => Teacher310Widget(),
        ),
        FFRoute(
          name: Farmer35Widget.routeName,
          path: Farmer35Widget.routePath,
          builder: (context, params) => Farmer35Widget(),
        ),
        FFRoute(
          name: Police38Widget.routeName,
          path: Police38Widget.routePath,
          builder: (context, params) => Police38Widget(),
        ),
        FFRoute(
          name: Driver34Widget.routeName,
          path: Driver34Widget.routePath,
          builder: (context, params) => Driver34Widget(),
        ),
        FFRoute(
          name: Cook32Widget.routeName,
          path: Cook32Widget.routePath,
          builder: (context, params) => Cook32Widget(),
        ),
        FFRoute(
          name: Aunt61Widget.routeName,
          path: Aunt61Widget.routePath,
          builder: (context, params) => Aunt61Widget(),
        ),
        FFRoute(
          name: Architect61Widget.routeName,
          path: Architect61Widget.routePath,
          builder: (context, params) => Architect61Widget(),
        ),
        FFRoute(
          name: Doctor33Widget.routeName,
          path: Doctor33Widget.routePath,
          builder: (context, params) => Doctor33Widget(),
        ),
        FFRoute(
          name: Brother62Widget.routeName,
          path: Brother62Widget.routePath,
          builder: (context, params) => Brother62Widget(),
        ),
        FFRoute(
          name: ScoreJobs3Widget.routeName,
          path: ScoreJobs3Widget.routePath,
          builder: (context, params) => ScoreJobs3Widget(),
        ),
        FFRoute(
          name: ScoreJobs6Widget.routeName,
          path: ScoreJobs6Widget.routePath,
          builder: (context, params) => ScoreJobs6Widget(),
        ),
        FFRoute(
          name: Family64Widget.routeName,
          path: Family64Widget.routePath,
          builder: (context, params) => Family64Widget(),
        ),
        FFRoute(
          name: Cousin63Widget.routeName,
          path: Cousin63Widget.routePath,
          builder: (context, params) => Cousin63Widget(),
        ),
        FFRoute(
          name: Father65Widget.routeName,
          path: Father65Widget.routePath,
          builder: (context, params) => Father65Widget(),
        ),
        FFRoute(
          name: Grandfather66Widget.routeName,
          path: Grandfather66Widget.routePath,
          builder: (context, params) => Grandfather66Widget(),
        ),
        FFRoute(
          name: Grandmother67Widget.routeName,
          path: Grandmother67Widget.routePath,
          builder: (context, params) => Grandmother67Widget(),
        ),
        FFRoute(
          name: Mother68Widget.routeName,
          path: Mother68Widget.routePath,
          builder: (context, params) => Mother68Widget(),
        ),
        FFRoute(
          name: Sister69Widget.routeName,
          path: Sister69Widget.routePath,
          builder: (context, params) => Sister69Widget(),
        ),
        FFRoute(
          name: Uncle610Widget.routeName,
          path: Uncle610Widget.routePath,
          builder: (context, params) => Uncle610Widget(),
        ),
        FFRoute(
          name: Ball31Widget.routeName,
          path: Ball31Widget.routePath,
          builder: (context, params) => Ball31Widget(),
        ),
        FFRoute(
          name: Race36Widget.routeName,
          path: Race36Widget.routePath,
          builder: (context, params) => Race36Widget(),
        ),
        FFRoute(
          name: Run37Widget.routeName,
          path: Run37Widget.routePath,
          builder: (context, params) => Run37Widget(),
        ),
        FFRoute(
          name: Swim38Widget.routeName,
          path: Swim38Widget.routePath,
          builder: (context, params) => Swim38Widget(),
        ),
        FFRoute(
          name: Jump34Widget.routeName,
          path: Jump34Widget.routePath,
          builder: (context, params) => Jump34Widget(),
        ),
        FFRoute(
          name: Kick35Widget.routeName,
          path: Kick35Widget.routePath,
          builder: (context, params) => Kick35Widget(),
        ),
        FFRoute(
          name: Team39Widget.routeName,
          path: Team39Widget.routePath,
          builder: (context, params) => Team39Widget(),
        ),
        FFRoute(
          name: Game32Widget.routeName,
          path: Game32Widget.routePath,
          builder: (context, params) => Game32Widget(),
        ),
        FFRoute(
          name: Win310Widget.routeName,
          path: Win310Widget.routePath,
          builder: (context, params) => Win310Widget(),
        ),
        FFRoute(
          name: Goal33Widget.routeName,
          path: Goal33Widget.routePath,
          builder: (context, params) => Goal33Widget(),
        ),
        FFRoute(
          name: ScoreSport3Widget.routeName,
          path: ScoreSport3Widget.routePath,
          builder: (context, params) => ScoreSport3Widget(),
        ),
        FFRoute(
          name: ScoreSport6Widget.routeName,
          path: ScoreSport6Widget.routePath,
          builder: (context, params) => ScoreSport6Widget(),
        ),
        FFRoute(
          name: Doctor62Widget.routeName,
          path: Doctor62Widget.routePath,
          builder: (context, params) => Doctor62Widget(),
        ),
        FFRoute(
          name: Engineer63Widget.routeName,
          path: Engineer63Widget.routePath,
          builder: (context, params) => Engineer63Widget(),
        ),
        FFRoute(
          name: Farmer64Widget.routeName,
          path: Farmer64Widget.routePath,
          builder: (context, params) => Farmer64Widget(),
        ),
        FFRoute(
          name: Firefighter65Widget.routeName,
          path: Firefighter65Widget.routePath,
          builder: (context, params) => Firefighter65Widget(),
        ),
        FFRoute(
          name: Journalist66Widget.routeName,
          path: Journalist66Widget.routePath,
          builder: (context, params) => Journalist66Widget(),
        ),
        FFRoute(
          name: Nurse67Widget.routeName,
          path: Nurse67Widget.routePath,
          builder: (context, params) => Nurse67Widget(),
        ),
        FFRoute(
          name: PoliceOfficer68Widget.routeName,
          path: PoliceOfficer68Widget.routePath,
          builder: (context, params) => PoliceOfficer68Widget(),
        ),
        FFRoute(
          name: Scientist69Widget.routeName,
          path: Scientist69Widget.routePath,
          builder: (context, params) => Scientist69Widget(),
        ),
        FFRoute(
          name: Teacher610Widget.routeName,
          path: Teacher610Widget.routePath,
          builder: (context, params) => Teacher610Widget(),
        ),
        FFRoute(
          name: Badminton61Widget.routeName,
          path: Badminton61Widget.routePath,
          builder: (context, params) => Badminton61Widget(),
        ),
        FFRoute(
          name: Basketball62Widget.routeName,
          path: Basketball62Widget.routePath,
          builder: (context, params) => Basketball62Widget(),
        ),
        FFRoute(
          name: Cycling63Widget.routeName,
          path: Cycling63Widget.routePath,
          builder: (context, params) => Cycling63Widget(),
        ),
        FFRoute(
          name: Football64Widget.routeName,
          path: Football64Widget.routePath,
          builder: (context, params) => Football64Widget(),
        ),
        FFRoute(
          name: Running65Widget.routeName,
          path: Running65Widget.routePath,
          builder: (context, params) => Running65Widget(),
        ),
        FFRoute(
          name: Skating66Widget.routeName,
          path: Skating66Widget.routePath,
          builder: (context, params) => Skating66Widget(),
        ),
        FFRoute(
          name: Swimming67Widget.routeName,
          path: Swimming67Widget.routePath,
          builder: (context, params) => Swimming67Widget(),
        ),
        FFRoute(
          name: TableTennis68Widget.routeName,
          path: TableTennis68Widget.routePath,
          builder: (context, params) => TableTennis68Widget(),
        ),
        FFRoute(
          name: Tennis69Widget.routeName,
          path: Tennis69Widget.routePath,
          builder: (context, params) => Tennis69Widget(),
        ),
        FFRoute(
          name: Volleyball610Widget.routeName,
          path: Volleyball610Widget.routePath,
          builder: (context, params) => Volleyball610Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/start';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/adaptive_foreground_icon.png',
                      width: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
