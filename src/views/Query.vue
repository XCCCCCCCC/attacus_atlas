<script>
export default {
  name: 'query',
  components: {},
  props: {},
  data() {
    return {
      labelWidth: '100px',
      queryForm: {
        id: '',
        date: new Date(),
        name: '', // 姓名
        telNum: '', // 手机号
        wechatNum: '', // 微信号
        identityCardNum: '', // 身份证号码
        education: 1, // 学历（专/本/硕/博）
        loanAmount: 0, // 贷款金额
        loanUse: '', // 贷款用途
        age: 18, // 年龄
        isKnow: 1, // 家人是否知晓（是/否）
        address: '', // 地址
        // 上班
        hasWork: false,
        workAccumulationFund: '', // 公积金
        workSocialSecurity: '', // 社保
        workSalary: '', // 打卡工资
        workHour: '', // 工作时长
        workCompanyNature: 1, // 公司性质（事业/国企/民营）
        // 做生意
        hasBusiness: false,
        businessLicense: '', // 营业执照
        businessPosition: '', // 职位
        businessHour: '', // 经营时长
        businessAddress: '', // 经营地址
        businessIndustry: '', // 经营行业
        businessFlow: '', // 流水
        businessTax: '', // 税
        // 房
        hasHouse: false,
        houseLocal: 1, // 是否本地（上海/外地）
        houseRegion: '', // 区域
        houseBuyMethod: 1, // 购买方式（全款/按揭）
        houseValue: '', // 市值（单位；万）
        houseMonthlyPayment: '', // 月供（单位为元）
        housePaymentPeriod: '', // 还款期数（单位为月）
        houseAge: '', // 房龄（单位为年）
        houseInterestNum: '', // 权利人数
        houseInterestAge: '', // 权利人年龄
        houseIsMortage: 1, // 是否抵押（是/否）
        // 车
        hasCar: false,
        carLocal: 1, // 是否本地（是/否）
        carLicense: '', // 车牌
        carBuyMethod: 1, // 购买方式（全款/按揭）
        carValue: '', // 价值（单位为万）
        carMonthlyPayment: '', // 月供（单位为元）
        carMonthlyPeriod: '', // 期数（单位为月）
        carAge: '', // 车龄（单位为年）
        carUseKm: '', // 里程数（单位为公里）
        // 保单
        policyHolder: '', // 投保人
        policyInsuranceCompany: '', // 保险公司
        policyPaymentMethod: 1, // 缴费方式（月/年）
        policyYearCost: '', // 年费（单位为元）
        policyPaymentPeriod: '', // 缴费时长（单位为月）
        // 征信
        creditIsDelay: 1, // 是否当前有逾期（是/否）
        creditThreeMonthDelayTimes: '', // 近3月逾期次数
        creditSixMonthDelayTimes: '', // 近6月逾期次数
        creditYearDelayTimes: '', // 近1年逾期次数
        creditTwoYearDelayTimes: '', // 近2年逾期次数
        creditSeriesThreeMonthDelayTimes: '', // 近3月连续逾期次数
        creditSeriesSixMonthDelayTimes: '', // 近6月连续逾期次数
        creditSeriesYearDelayTimes: '', // 近1年连续逾期次数
        creditSeriesTwoYearDelayTimes: '', // 近2年连续逾期次数
        // 负债
        debtCreditAmount: '', // 信用卡总额度
        debtCreditUsedAmount: '', // 已用额度
        debtLoanTimes: '', // 贷款次数
        debtLoanAmount: '', // 贷款总额
        debtOnlineLoanTimes: '', // 网贷次数
        debtOnlineLoanAmount: '', // 网贷总额
        debtThreeMonthQueryTimes: '', // 近3月查询
        debtSixMonthQueryTimes: '', // 近6月查询
      },
      queryFormRules: {},
    }
  },
  computed: {},
  watch: {},
  beforeCreate() {},
  created() {},
  beforeMount() {},
  mounted() {},
  beforeUpdate() {},
  updated() {},
  activated() {},
  deactivated() {},
  beforeDestroy() {},
  destroyed() {},
  methods: {
    hump2Underline(s) {
      return s.replace(/([A-Z])/g, '_$1').toLowerCase()
    },
  },
}
</script>

<template>
  <div id="query">
    <el-form
      size="small"
      ref="queryForm"
      :model="queryForm"
      :rules="queryFormRules"
      :label-width="labelWidth"
    >
      <!-- 基本信息 -->
      <el-form-item label="日期" prop="date">
        <el-date-picker
          type="date"
          placeholder="请选择日期"
          v-model="queryForm.date"
          style="width: 100%;"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="姓名" prop="name">
        <el-input v-model="queryForm.name"></el-input>
      </el-form-item>
      <el-form-item label="手机号" prop="telNum">
        <el-input v-model="queryForm.telNum"></el-input>
      </el-form-item>
      <el-form-item label="微信号" prop="wechatNum">
        <el-input v-model="queryForm.wechatNum"></el-input>
      </el-form-item>
      <el-form-item label="身份证号码" prop="identityCardNum">
        <el-input v-model="queryForm.identityCardNum"></el-input>
      </el-form-item>
      <el-form-item label="学历" prop="education">
        <el-radio-group v-model="queryForm.education">
          <el-radio :label="1">专</el-radio>
          <el-radio :label="2">本</el-radio>
          <el-radio :label="3">硕</el-radio>
          <el-radio :label="4">博</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="贷款金额" prop="loanAmount">
        <el-input-number
          v-model="queryForm.loanAmount"
          controls-position="right"
          :min="1"
          style="width: 100%;"
        ></el-input-number>
      </el-form-item>
      <el-form-item label="贷款用途" prop="loanUse">
        <el-input v-model="queryForm.loanUse"></el-input>
      </el-form-item>
      <el-form-item label="贷款金额" prop="age">
        <el-input-number
          v-model="queryForm.age"
          controls-position="right"
          :min="18"
          :max="100"
          style="width: 100%;"
        ></el-input-number>
      </el-form-item>
      <el-form-item label="家人是否知晓" prop="isKnow">
        <el-radio-group v-model="queryForm.isKnow">
          <el-radio :label="1">是</el-radio>
          <el-radio :label="2">否</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="地址" prop="address">
        <el-input v-model="queryForm.address"></el-input>
      </el-form-item>
      <!-- 上班 -->
      <el-form-item label="上班">
        <el-switch v-model="queryForm.hasWork"></el-switch>
      </el-form-item>
      <template v-if="hasWork"></template>
      <!-- 做生意 -->
      <el-form-item label="做生意">
        <el-switch v-model="queryForm.hasBusiness"></el-switch>
      </el-form-item>
      <template v-if="hasBusiness"></template>
      <!-- 房 -->
      <el-form-item label="房">
        <el-switch v-model="queryForm.hasHouse"></el-switch>
      </el-form-item>
      <template v-if="hasHouse"></template>
      <!-- 车 -->
      <el-form-item label="车">
        <el-switch v-model="queryForm.hasCar"></el-switch>
      </el-form-item>
      <template v-if="hasCar"></template>
      <!-- 保单 -->
      <!-- 征信 -->
      <!-- 负债 -->
    </el-form>
  </div>
</template>

<style lang="scss">
#query {
  width: 400px;
}
</style>
