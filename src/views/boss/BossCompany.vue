<template>
  <div>
    <mt-header title="填写公司信息">
      <mt-button icon="back" slot="left" @click="goback"> </mt-button>
    </mt-header>
    <van-cell-group>
      <van-field v-model="name" label="公司名称" placeholder="请输入公司名称" />
      <van-field
        v-model="introduct"
        label="公司HR"
        placeholder="请输入职业名称"
      />
      <van-field
        readonly
        clickable
        name="area"
        :value="value"
        label="地区选择"
        placeholder="点击选择省市区"
        @click="position = true"
      />
      <van-popup v-model="position" position="bottom">
        <van-area
          :area-list="areaList"
          @confirm="onConfirm"
          @cancel="position = false"
        />
      </van-popup>
      <!-- <van-field
        v-model="time"
        label="成立时间"
        placeholder="请输入公司成立时间"
      /> -->
      <van-field
        readonly
        clickable
        label="成立时间"
        :value="mattertimeValue"
        placeholder="选择时间"
        :rules="[{ trigger: 'onSubmit', message: '请选择事项时间' }]"
        @click="showmattertime = true"
      />
      <van-popup v-model="showmattertime" round position="bottom">
        <van-datetime-picker
          v-model="currentDate"
          type="date"
          title="选择年月日"
          :min-date="minDate"
          :max-date="maxDate"
          @cancel="showmattertime = false"
          @confirm="mattertimeConfirm"
        />
      </van-popup>

      <van-field
        v-model="money"
        label="注册资本"
        placeholder="请输入公司注册资本"
      />
    </van-cell-group>
    <mt-button type="primary" size="large" @click="bosscompanyjieshao"
      >提交</mt-button
    >
  </div>
</template>

<script>
import { areaList } from "@vant/area-data";
export default {
  data() {
    return {
      name: "",
      introduct: "",
      position: false,
      currentDate: "",
      money: "",
      maxDate: new Date(), // 不写具体的时间表示最大为当天
      minDate: new Date(1990, 0, 1),
      showmattertime: false,
      value: "",
      areaList,
      mattertimeValue: "",
    };
  },
  methods: {
    bosscompanyjieshao() {
      let param = `name=${this.name}&introduct=${this.introduct}&position=${this.value}&currentDate=${this.mattertimeValue}&money=${this.money}&boss_name=${this.$store.state.boss_name}`;
      this.axios.post("/bosscompany", param).then((res) => {
        console.log(res);
        if (res.data.code == 200) {
          console.log("提交成功");
          this.$router.push(`/bossindex/me`);
        } else {
          alert("提交失败");
        }
      });
    },
    goback() {
      this.$router.go(-1);
    },
    onConfirm(values) {
      this.value = values
        .filter((item) => !!item)
        .map((item) => item.name)
        .join("/");
      this.position = false;
    },
    // 取当天时间,并将值绑定页面就会是当天的默认值
    getnewDate() {
      let nowdata = new Date();
      let year = nowdata.getFullYear();
      let month = nowdata.getMonth() + 1;
      let date = nowdata.getDate();
      let nowtime = year + "-";
      if (month < 10) {
        nowtime += "0";
      }
      nowtime += month + "-";
      if (date < 10) {
        nowtime += "0";
      }
      nowtime += date;
      // this.mattertimeValue是组件:value绑定的值
      this.mattertimeValue = nowtime;
    },

    // 时间下拉选择事件
    mattertimeConfirm() {
      let nowdata = new Date();
      let year = nowdata.getFullYear();
      let month = nowdata.getMonth() + 1;
      let date = nowdata.getDate();
      let clock = year + "-";
      if (month < 10) {
        clock += "0";
      }
      clock += month + "-";
      if (date < 10) {
        clock += "0";
      }
      clock += date;
      // this.mattertimeValue是组件:value绑定的值
      // this.showmattertime是组件@cancel和click和v-model绑定的值
      this.mattertimeValue = clock;
      this.showmattertime = false;
      console.log(this.mattertimeValue, this.showmattertime);
    },
  },
};
</script>

<style lang="scss" scoped></style>
