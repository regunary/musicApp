import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// làm mới header
// class HomeRefreshHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var strings = RefreshLocalizations.of(context)?.currentLocalization ??
//         EnRefreshString();
//     return ClassicHeader(
//       canTwoLevelText: S.of(context).refreshTwoLevel,
//       textStyle: TextStyle(color: Colors.white),
//       outerBuilder: (child) => HomeSecondFloorOuter(child),
//       twoLevelView: Container(),
//       height: 70 + MediaQuery.of(context).padding.top / 3,
//       refreshingIcon: ActivityIndicator(brightness: Brightness.dark),
//       releaseText: strings.canRefreshText,
//     );
//   }
// }

/// làm mới footer
class RefresherFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClassicFooter(
//      failedText: S.of(context).loadMoreFailed,
//      idleText: S.of(context).loadMoreIdle,
//      loadingText: S.of(context).loadMoreLoading,
//      noDataText: S.of(context).loadMoreNoData,
        );
  }
}
