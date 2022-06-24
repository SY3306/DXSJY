<template>
  <!-- 登录页面 -->
  <div class="bgc">
    <!-- 头部标题栏 -->
    <!--  @blur.native.capture="checkName"  失去焦点时候执行checkName函数    native是给其添加原生属性  capture 捕获阶段执行 -->

    <mt-header title="注册">
      <mt-button icon="back" slot="left">返回</mt-button>
      <!-- 用户头像 -->
      <!-- 点击跳转至注册页面 -->
      <router-link to="/lqflogin" slot="right">登录</router-link>
    </mt-header>
    <div class="kong"></div>
    <!-- 表单 -->
    <mt-field
      v-model="name"
      label="用户名"
      placeholder="请输入用户名"
      @blur.native.capture="checkName"
      :state="nameState"
    ></mt-field>
    <br />

    <mt-field
      v-model="phone"
      label="手机号"
      placeholder="请输入手机号"
      @blur.native.capture="checkPhone"
      :state="phoneState"
    ></mt-field>
    <br />

    <mt-field
      v-model="pwd"
      label="密码"
      placeholder="请输入密码"
      type="password"
      @blur.native.capture="checkPwd"
      :state="pwdState"
    ></mt-field>
    <br />
    <mt-field
      v-model="repwd"
      label="确认密码"
      placeholder="请输入密码"
      type="password"
      @blur.native.capture="checkrepwd"
      :state="repwdState"
    ></mt-field>

    <!-- 登录同意协议 -->
    <div class="login">
      <van-checkbox v-model="checked">
        <span>我已阅读同意招聘服务协议与隐私政策</span>
      </van-checkbox>
    </div>
    <!-- 按钮 -->
    <van-button
      round
      type="primary"
      size="large"
      @click.native.capture="getdata"
      color="linear-gradient(to right, #48D1CC, #4169e1)"
      :disabled="!checked"
      >快速注册</van-button
    >
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      phone: "",
      pwd: "",
      repwd: "",
      phoneState: "",
      nameState: "",
      pwdState: "",
      repwdState: "",
      checked: false,
    };
  },
  methods: {
    checkName() {
      //用户名焦点失去后执行
      console.log("用户名：", this.name);
      //正则验证账号
      let reg = /^\w{3,15}$/;
      if (reg.test(this.name)) {
        console.log("名字合法");
        this.nameState = "success";
        return true;
      } else {
        console.log("名字不合法");
        this.nameState = "error";
        return false;
      }
    },
    checkPhone() {
      let reg = /^1[3|4|5|7|8][0-9]{9}$/;
      if (reg.test(this.phone)) {
        this.phoneState = "success";
        return true;
      } else {
        this.phoneState = "error";
        return false;
      }
    },

    checkPwd() {
      let reg = /^\d{6}$/;
      if (reg.test(this.pwd)) {
        this.pwdState = "success";
        return true;
      } else {
        this.pwdState = "error";
        return false;
      }
    },
    checkrepwd() {
      if (this.pwd == this.repwd) {
        this.repwdState = "success";
      } else {
        this.repwdState = "error";
        alert("两次输入的密码不一致,请重新输入");
        this.repwd = "";
        this.pwd = "";
      }
    },

    login() {
      if (this.checkName() && this.checkPwd) {
      }
      console.log(`${this.name},${this.pwd}`);
    },
    getdata() {
      let params = `empname=${this.name}&emppwd=${this.pwd}`;
      this.axios.post("/login", params).then((res) => {
        if (res.data.code == 200) {
          this.$router.push("/empindex");
        } else {
          alert("用户不存在");
          this.name = "";
          this.pwd = "";
          this.checked = false;
          this.nameState = "";
          this.pwdState = "";
        }
      });
    },
  },
};
</script>

<style scoped>
.bgc {
  height: 100vh;
  background-repeat: no-repeat;
  background-image: url("../../../assets/login.jpeg");
  background-position: center;
  background-size: cover;
}
.kong {
  height: 20%;
}
.login {
  margin: 1em 0;
}
.login span {
  color: white;
}
</style>
