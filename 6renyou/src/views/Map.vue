<template>
    <div class="mapbox">百度地图模块
        <baidu-map
            :center="center"
            :zoom="zoom"
            :scroll-wheel-zoom="true"
            style="height:400px;width:800px;"
            @ready="handler"
            @click="getClickInfo"
            >
            <!-- 必须给容器指高度，不然地图将显示在一个高度为0的容器中，看不到 -->
            <!-- //缩放比例尺的展示 -->
            <!-- <bm-navigation anchor="BMAP_ANCHOR_TOP_RIGHT"></bm-navigation> -->
            <!-- 定位 -->
            <bm-geolocation anchor="BMAP_ANCHOR_BOTTOM_RIGHT" :showAddressBar="true" :autoLocation="true"></bm-geolocation>
            <!-- <bm-city-list anchor="BMAP_ANCHOR_TOP_LEFT"></bm-city-list> -->
            <!-- 添加一个小红点的，并将当前的经纬度写入数据中 -->
            <bm-marker :position="{lng:center.lng, lat: center.lat}"></bm-marker>
        </baidu-map>
    </div>
</template>
<script>
export default {
  name: "mapbox",
  data() {
    return {
      center: { lng: 0, lat: 0 }, //经纬度
      zoom: 15 //地图展示级别
    };
  },
  methods: {
    handler({ BMap, map }) {
    //   console.log(BMap, map);
      this.center.lng = 118.824371; //这暂时设置的是明故宫的地址坐标
      this.center.lat = 32.047651;
      this.zoom = this.zoom;
    },
    getClickInfo(e) {
      console.log(e.point.lng);
      console.log(e.point.lat);
      this.center.lng = e.point.lng;
      this.center.lat = e.point.lat;
    }
  }
};
</script>
<style scoped>
</style>



