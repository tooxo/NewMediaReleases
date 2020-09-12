import 'package:NewMediaReleases/music/music_details.dart';
import 'package:NewMediaReleases/music/music_preview_rack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';



class MoviePreview{
  RefreshController _refreshController =
  RefreshController(initialRefresh: true);
  ScrollController _scrollController = ScrollController();

  void _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      scrollController: _scrollController,
      header: WaterDropMaterialHeader(
        backgroundColor: Colors.black,
        color: Colors.white,
        distance: 40,
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: SingleChildScrollView(
        child: Column(

        ),
      ),
    );
  }
}
