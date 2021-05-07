<script>
import { main } from '@/api/query'
export default {
  name: 'query',
  components: {},
  props: {},
  data() {
    return {
      labelWidth: '120px',
      summaryForm: {
        id: '', //
        loanType: '', // 贷款类型
        loanName: '', // 贷款机构名称
        nation: '', // 国籍
        age: 18, // 年龄
        loadnLimit: '', // 贷款额度
        loadnInterest: '', // 贷款利息
        repaymentMethod: '', // 还款方式
        queryTimes: 0, // 查询次数
        residence: '', // 居住地
        repaymentTerm: '', // 期限
        material: true, // 需要材料
        creditRequirements: '', // 征信要求
        prepayment: '', // 提前还款
        incomingRequirements: '', // 进件要求
        applicationProcess: '', // 申请流程
        quotaAlgorithm: '', // 额度算法
        debtAlgorithm: '', // 负债算法
      },
      summaryFormRules: {},
      detailForm: {
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
        isKnow: true, // 家人是否知晓（是/否）
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
        houseLocal: true, // 是否本地（上海/外地）
        houseRegion: '', // 区域
        houseBuyMethod: 1, // 购买方式（全款/按揭）
        houseValue: '', // 市值（单位；万）
        houseMonthlyPayment: '', // 月供（单位为元）
        housePaymentPeriod: '', // 还款期数（单位为月）
        houseAge: '', // 房龄（单位为年）
        houseInterestNum: '', // 权利人数
        houseInterestAge: '', // 权利人年龄
        houseIsMortage: false, // 是否抵押（是/否）
        // 车
        hasCar: false,
        carLocal: true, // 是否本地（是/否）
        carLicense: '', // 车牌
        carBuyMethod: 1, // 购买方式（全款/按揭）
        carValue: '', // 价值（单位为万）
        carMonthlyPayment: '', // 月供（单位为元）
        carMonthlyPeriod: '', // 期数（单位为月）
        carAge: '', // 车龄（单位为年）
        carUseKm: '', // 里程数（单位为公里）
        // 保单
        hasPolicy: false,
        policyHolder: '', // 投保人
        policyInsuranceCompany: '', // 保险公司
        policyPaymentMethod: 1, // 缴费方式（月/年）
        policyYearCost: '', // 年费（单位为元）
        policyPaymentPeriod: '', // 缴费时长（单位为月）
        // 征信
        hasCredit: false,
        creditIsDelay: false, // 是否当前有逾期（是/否）
        creditThreeMonthDelayTimes: '', // 近3月逾期次数
        creditSixMonthDelayTimes: '', // 近6月逾期次数
        creditYearDelayTimes: '', // 近1年逾期次数
        creditTwoYearDelayTimes: '', // 近2年逾期次数
        creditSeriesThreeMonthDelayTimes: '', // 近3月连续逾期次数
        creditSeriesSixMonthDelayTimes: '', // 近6月连续逾期次数
        creditSeriesYearDelayTimes: '', // 近1年连续逾期次数
        creditSeriesTwoYearDelayTimes: '', // 近2年连续逾期次数
        // 负债
        hasDebt: false,
        debtCreditAmount: '', // 信用卡总额度
        debtCreditUsedAmount: '', // 已用额度
        debtLoanTimes: '', // 贷款次数
        debtLoanAmount: '', // 贷款总额
        debtOnlineLoanTimes: '', // 网贷次数
        debtOnlineLoanAmount: '', // 网贷总额
        debtThreeMonthQueryTimes: '', // 近3月查询
        debtSixMonthQueryTimes: '', // 近6月查询
      },
      detailFormRules: {
        // name: [
        //   {
        //     required: true,
        //     message: '请输入姓名',
        //     trigger: 'blur',
        //   },
        // ],
        // education: [
        //   {
        //     required: true,
        //     message: '请选择学历',
        //     trigger: 'change',
        //   },
        // ],
        // loanAmount: [
        //   {
        //     required: true,
        //     message: '请输入贷款金额',
        //     trigger: 'blur',
        //   },
        // ],
        // loanUse: [
        //   {
        //     required: true,
        //     message: '请输入贷款用途',
        //     trigger: 'blur',
        //   },
        // ],
        // age: [
        //   {
        //     required: true,
        //     message: '请输入年龄',
        //     trigger: 'blur',
        //   },
        // ],
        // isKnow: [
        //   {
        //     required: true,
        //     message: '请选择父母是否知晓',
        //     trigger: 'change',
        //   },
        // ],
        // address: [
        //   {
        //     required: true,
        //     message: '请输入地址',
        //     trigger: 'blur',
        //   },
        // ],
      },
      resultData: [],
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
    onSubmit() {
      this.$refs.detailForm.validate((valid) => {
        if (valid) {
          const keys = Object.keys(this.detailForm)
          const data = {}
          for (const key of keys) {
            data[this.hump2Underline(key)] = this.detailForm[key]
          }
          console.log(data)
          main(data)
            .then((res) => {
              console.log(data)
              this.resultData = res
            })
            .catch((err) => {
              console.log(err)
            })
        } else {
          console.log('error submit!!')
          return false
        }
      })
    },
  },
}
</script>

<template>
  <div id="query">
    <el-form
      size="small"
      ref="summaryForm"
      :model="summaryForm"
      :rules="summaryFormRules"
      :label-width="labelWidth"
      class="query-form"
    >
      <!-- 概要信息 -->
      <el-divider>概要信息</el-divider>
      <el-row :gutter="28">
        <el-col :span="8"></el-col>
        <el-col :span="8"></el-col>
        <el-col :span="8"></el-col>
      </el-row>
    </el-form>
    <el-form
      size="small"
      ref="detailForm"
      :model="detailForm"
      :rules="detailFormRules"
      :label-width="labelWidth"
      class="query-form"
    >
      <!-- 基本信息 -->
      <el-divider>基本信息</el-divider>
      <el-row :gutter="28">
        <el-col :span="8">
          <el-form-item label="日期" prop="date">
            <el-date-picker
              type="date"
              placeholder="请选择日期"
              v-model="detailForm.date"
              style="width: 100%;"
            ></el-date-picker>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="姓名" prop="name">
            <el-input v-model="detailForm.name" placeholder="请输入姓名"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="手机号" prop="telNum">
            <el-input v-model="detailForm.telNum" placeholder="请输入手机号"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="微信号" prop="wechatNum">
            <el-input v-model="detailForm.wechatNum" placeholder="请输入微信号"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="身份证号码" prop="identityCardNum">
            <el-input v-model="detailForm.identityCardNum" placeholder="请输入身份证号码"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="学历" prop="education">
            <el-radio-group v-model="detailForm.education" placeholder="请选择学历">
              <el-radio :label="1">专</el-radio>
              <el-radio :label="2">本</el-radio>
              <el-radio :label="3">硕</el-radio>
              <el-radio :label="4">博</el-radio>
              <el-radio :label="5">其他</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row :gutter="22">
        <el-col :span="8">
          <el-form-item label="贷款金额" prop="loanAmount">
            <el-input-number
              v-model="detailForm.loanAmount"
              controls-position="right"
              :min="1"
              style="width: 100%;"
              placeholder="请输入贷款金额"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款用途" prop="loanUse">
            <el-input v-model="detailForm.loanUse" placeholder="请输入贷款用途"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="年龄" prop="age">
            <el-input-number
              v-model="detailForm.age"
              controls-position="right"
              :min="18"
              :max="100"
              style="width: 100%;"
              placeholder="请输入年龄"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="家人是否知晓" prop="isKnow">
            <el-radio-group v-model="detailForm.isKnow" placeholder="请选择家人是否知晓">
              <el-radio :label="true">是</el-radio>
              <el-radio :label="false">否</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="地址" prop="address">
            <el-input type="textarea" v-model="detailForm.address" placeholder="请输入地址"></el-input>
          </el-form-item>
        </el-col>
      </el-row>
      <!-- 上班 -->
      <el-divider>上班</el-divider>
      <el-form-item label="上班">
        <el-switch v-model="detailForm.hasWork" placeholder="请选择上班"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasWork">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="公积金" prop="workAccumulationFund">
              <el-input-number
                v-model="detailForm.workAccumulationFund"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入公积金"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="社保" prop="workSocialSecurity">
              <el-input-number
                v-model="detailForm.workSocialSecurity"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入社保"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="打卡工资" prop="workSalary">
              <el-input-number
                v-model="detailForm.workSalary"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入打卡工资"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="工作时长" prop="workHour">
              <el-input-number
                v-model="detailForm.workHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入工作时长"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="公司性质" prop="workCompanyNature">
              <el-radio-group v-model="detailForm.workCompanyNature" placeholder="请选择公司性质">
                <el-radio :label="1">事业</el-radio>
                <el-radio :label="2">国企</el-radio>
                <el-radio :label="3">民营</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 做生意 -->
      <el-divider>做生意</el-divider>
      <el-form-item label="做生意">
        <el-switch v-model="detailForm.hasBusiness"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasBusiness">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="营业执照" prop="businessLicense">
              <el-input v-model="detailForm.businessLicense"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="职位" prop="businessPosition">
              <el-input v-model="detailForm.businessPosition"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营时长" prop="businessHour">
              <el-input-number
                v-model="detailForm.businessHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营地址" prop="businessAddress">
              <el-input type="textarea" v-model="detailForm.businessAddress"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营行业" prop="businessIndustry">
              <el-input v-model="detailForm.businessIndustry"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 房 -->
      <el-divider>房</el-divider>
      <el-form-item label="房">
        <el-switch v-model="detailForm.hasHouse" placeholder="请选择房"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasHouse">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="是否本地" prop="houseLocal">
              <el-radio-group v-model="detailForm.houseLocal" placeholder="请选择是否本地">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="区域" prop="houseRegion">
              <el-input v-model="detailForm.houseRegion" placeholder="请输入区域"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="市值（万）" prop="businessHour">
              <el-input-number
                v-model="detailForm.businessHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入市值（万）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="购买方式" prop="houseBuyMethod">
              <el-radio-group v-model="detailForm.houseBuyMethod" placeholder="请选择购买方式">
                <el-radio :label="1">全款</el-radio>
                <el-radio :label="2">按揭</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <template v-if="detailForm.houseBuyMethod === 2">
            <el-col :span="8">
              <el-form-item label="月供（元）" prop="houseMonthlyPayment">
                <el-input-number
                  v-model="detailForm.houseMonthlyPayment"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入月供（元）"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="还款期数（月）" prop="housePaymentPeriod">
                <el-input-number
                  v-model="detailForm.housePaymentPeriod"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入还款期数（月）"
                ></el-input-number>
              </el-form-item>
            </el-col>
          </template>
          <el-col :span="8">
            <el-form-item label="房龄（年）" prop="houseAge">
              <el-input-number
                v-model="detailForm.houseAge"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入房龄（年）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="权利人数" prop="houseInterestNum">
              <el-input-number
                v-model="detailForm.houseInterestNum"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入权利人数"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="权利人年龄" prop="houseInterestAge">
              <el-input-number
                v-model="detailForm.houseInterestAge"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入权利人年龄"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="是否抵押" prop="houseIsMortage">
              <el-radio-group v-model="detailForm.houseIsMortage" placeholder="请选择是否抵押">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 车 -->
      <el-divider>车</el-divider>
      <el-form-item label="车">
        <el-switch v-model="detailForm.hasCar" placeholder="请选择车"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasCar">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="是否本地" prop="carLocal">
              <el-radio-group v-model="detailForm.carLocal" placeholder="请选择是否本地">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="车牌" prop="carLicense">
              <el-input v-model="detailForm.carLicense" placeholder="请输入车牌"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="价值（万）" prop="carValue">
              <el-input-number
                v-model="detailForm.carValue"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入价值（万）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="购买方式" prop="carBuyMethod">
              <el-radio-group v-model="detailForm.carBuyMethod" placeholder="请选择购买方式">
                <el-radio :label="1">全款</el-radio>
                <el-radio :label="2">按揭</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <template v-if="detailForm.houseBuyMethod === 2">
            <el-col :span="8">
              <el-form-item label="月供（元）" prop="carMonthlyPayment">
                <el-input-number
                  v-model="detailForm.carMonthlyPayment"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入月供（元）"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="还款期数（月）" prop="carMonthlyPeriod">
                <el-input-number
                  v-model="detailForm.carMonthlyPeriod"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入还款期数（月）"
                ></el-input-number>
              </el-form-item>
            </el-col>
          </template>
          <el-col :span="8">
            <el-form-item label="车龄（年）" prop="carAge">
              <el-input-number
                v-model="detailForm.carAge"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入车龄（年）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="里程数（公里）" prop="carUseKm">
              <el-input-number
                v-model="detailForm.carUseKm"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入里程数（公里）"
              ></el-input-number>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 保单 -->
      <el-divider>保单</el-divider>
      <el-form-item label="保单">
        <el-switch v-model="detailForm.hasPolicy" placeholder="请选择保单"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasPolicy">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="投保人" prop="policyHolder">
              <el-input v-model="detailForm.policyHolder" placeholder="请输入投保人"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="保险公司" prop="policyInsuranceCompany">
              <el-input v-model="detailForm.policyInsuranceCompany" placeholder="请输入保险公司"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="缴费方式" prop="policyPaymentMethod">
              <el-radio-group v-model="detailForm.policyPaymentMethod" placeholder="请选择缴费方式">
                <el-radio :label="1">月</el-radio>
                <el-radio :label="2">年</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="年费（元）" prop="policyYearCost">
              <el-input-number
                v-model="detailForm.policyYearCost"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入年费（元）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="缴费时长（月）" prop="policyPaymentPeriod">
              <el-input-number
                v-model="detailForm.policyPaymentPeriod"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入缴费时长（月）"
              ></el-input-number>
            </el-form-item>
          </el-col>
        </el-row>
      </template>

      <!-- 征信 -->
      <el-divider>征信</el-divider>
      <el-form-item label="征信">
        <el-switch v-model="detailForm.hasCredit" placeholder="请选择征信"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasCredit">
        <el-form-item label="是否当前有逾期" prop="creditIsDelay">
          <el-radio-group v-model="detailForm.creditIsDelay" placeholder="请选择是否当前有逾期">
            <el-radio :label="true">是</el-radio>
            <el-radio :label="false">否</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-row :gutter="28">
          <template v-if="detailForm.creditIsDelay">
            <el-col :span="8">
              <el-form-item label="近3月逾期次" prop="creditThreeMonthDelayTimes">
                <el-input-number
                  v-model="detailForm.creditThreeMonthDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近3月逾期次"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近6月逾期次" prop="creditSixMonthDelayTimes">
                <el-input-number
                  v-model="detailForm.creditSixMonthDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近6月逾期次"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近1年逾期次" prop="creditYearDelayTimes">
                <el-input-number
                  v-model="detailForm.creditYearDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近1年逾期次"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近2年逾期次" prop="creditTwoYearDelayTimes">
                <el-input-number
                  v-model="detailForm.creditTwoYearDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近2年逾期次"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近3月连续逾期次" prop="creditSeriesThreeMonthDelayTimes">
                <el-input-number
                  v-model="detailForm.creditSeriesThreeMonthDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近3月连续逾期次"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近6月连续逾期次" prop="creditSeriesSixMonthDelayTimes">
                <el-input-number
                  v-model="detailForm.creditSeriesSixMonthDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近1年连续逾期次" prop="creditSeriesYearDelayTimes">
                <el-input-number
                  v-model="detailForm.creditSeriesYearDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近2年连续逾期次" prop="creditSeriesTwoYearDelayTimes">
                <el-input-number
                  v-model="detailForm.creditSeriesTwoYearDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入"
                ></el-input-number>
              </el-form-item>
            </el-col>
          </template>
        </el-row>
      </template>

      <!-- 负债 -->
      <el-divider>负债</el-divider>
      <el-form-item label="负债">
        <el-switch v-model="detailForm.hasDebt" placeholder="请选择负债"></el-switch>
      </el-form-item>
      <template v-if="detailForm.hasDebt">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="信用卡总额度" prop="debtCreditAmount">
              <el-input-number
                v-model="detailForm.debtCreditAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入信用卡总额度"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="已用额度" prop="debtCreditUsedAmount">
              <el-input-number
                v-model="detailForm.debtCreditUsedAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入已用额度"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="贷款次数" prop="debtLoanTimes">
              <el-input-number
                v-model="detailForm.debtLoanTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入贷款次数"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="贷款总额" prop="debtLoanAmount">
              <el-input-number
                v-model="detailForm.debtLoanAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入贷款总额"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="网贷次数" prop="debtOnlineLoanTimes">
              <el-input-number
                v-model="detailForm.debtOnlineLoanTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入网贷次数"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="网贷总额" prop="debtOnlineLoanAmount">
              <el-input-number
                v-model="detailForm.debtOnlineLoanAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入网贷总额"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="近3月查询" prop="debtThreeMonthQueryTimes">
              <el-input-number
                v-model="detailForm.debtThreeMonthQueryTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入近3月查询"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="近6月查询" prop="debtSixMonthQueryTimes">
              <el-input-number
                v-model="detailForm.debtSixMonthQueryTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入近6月查询"
              ></el-input-number>
            </el-form-item>
          </el-col>
        </el-row>
      </template>

      <el-form-item>
        <el-button type="primary" @click="onSubmit">查询</el-button>
      </el-form-item>
    </el-form>
    <el-table :data="resultData" style="width: 100%,">
      <el-table-column label="序号">
        <template slot-scope="scope">
          <span>{{ scope.row.id }}</span>
        </template>
      </el-table-column>
      <el-table-column label="贷款类型">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_type }}</span>
        </template>
      </el-table-column>
      <el-table-column label="贷款机构名称">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_name }}</span>
        </template>
      </el-table-column>
      <!-- <el-table-column label="国籍">
        <template slot-scope="scope">
          <span>{{ scope.row.nation }}</span>
        </template>
      </el-table-column>-->
      <el-table-column label="最小年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.low_age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="最大年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.high_age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="最低贷款额度">
        <template slot-scope="scope">
          <span>{{ scope.row.low_loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column label="最高贷款额度">
        <template slot-scope="scope">
          <span>{{ scope.row.high_loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column label="上班公积金">
        <template slot-scope="scope">
          <span>{{ scope.row.work_accumulation_fund }}</span>
        </template>
      </el-table-column>
      <el-table-column label="上班社保">
        <template slot-scope="scope">
          <span>{{ scope.row.work_social_security }}</span>
        </template>
      </el-table-column>
      <el-table-column label="上班打卡工资">
        <template slot-scope="scope">
          <span>{{ scope.row.work_salary }}</span>
        </template>
      </el-table-column>
      <el-table-column label="公积金缴纳时长">
        <template slot-scope="scope">
          <span>{{ scope.row.work_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column label="上班公司性质">
        <template slot-scope="scope">
          <span>{{ scope.row.work_company_nature }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意营业执照">
        <template slot-scope="scope">
          <span>{{ scope.row.business_license }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意职位">
        <template slot-scope="scope">
          <span>{{ scope.row.business_position }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意经营时长">
        <template slot-scope="scope">
          <span>{{ scope.row.business_hour }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意经营地址">
        <template slot-scope="scope">
          <span>{{ scope.row.business_address }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意经营行业">
        <template slot-scope="scope">
          <span>{{ scope.row.business_industry }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意流水">
        <template slot-scope="scope">
          <span>{{ scope.row.business_flow }}</span>
        </template>
      </el-table-column>
      <el-table-column label="做生意税">
        <template slot-scope="scope">
          <span>{{ scope.row.business_tax }}</span>
        </template>
      </el-table-column>

      <el-table-column label="房屋是否本地">
        <template slot-scope="scope">
          <span>{{ scope.row.house_local }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋区域">
        <template slot-scope="scope">
          <span>{{ scope.row.house_region }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋购买方式">
        <template slot-scope="scope">
          <span>{{ scope.row.house_buy_method }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋市值（单位为万）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_value }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋月供（单位为元）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_monthly_payment }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋还款期数（单位为月）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房龄（单位为年）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋权利人数">
        <template slot-scope="scope">
          <span>{{ scope.row.house_interest_num }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋权利人年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.house_interest_age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="房屋是否抵押(无/一押)">
        <template slot-scope="scope">
          <span>{{ scope.row.house_is_mortgage }}</span>
        </template>
      </el-table-column>

      <el-table-column label="车是否本地">
        <template slot-scope="scope">
          <span>{{ scope.row.car_local }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车牌照">
        <template slot-scope="scope">
          <span>{{ scope.row.car_license }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车购买方式">
        <template slot-scope="scope">
          <span>{{ scope.row.car_buy_method }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车辆市值（单位为万）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_value }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车月供（单位为元）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_monthly_payment }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车还款期数（单位为月）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column label="车龄（单位为年）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="里程数（单位为公里）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_use_km }}</span>
        </template>
      </el-table-column>

      <el-table-column label="保单投保人">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_holder }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保单保险公司">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_insurance_company }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保单缴费方式">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_payment_method }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保单年费（单位为元）">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_year_cost }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保单缴费时长（单位为月）">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_payemnt_period }}</span>
        </template>
      </el-table-column>

      <el-table-column label="征信是否当前有逾期(是/否)">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_is_delay }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近3月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_three_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近6月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_six_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近12月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近24月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_two_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近3月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_three_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近6月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_six_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近12月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信近24月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_two_year_delay_times }}</span>
        </template>
      </el-table-column>

      <el-table-column label="负债信用卡总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_credit_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债已用额度">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_credit_used_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债贷款笔数">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_loan_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债贷款总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_loan_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债网贷笔数">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_online_loan_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债网贷总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_online_loan_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债近3月查询">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_three_month_query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债近6月查询">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_six_month_query_times }}</span>
        </template>
      </el-table-column>

      <!-- <el-table-column label="贷款利息">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_interest }}</span>
        </template>
      </el-table-column>
      <el-table-column label="还款方式">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_method }}</span>
        </template>
      </el-table-column>
      <el-table-column label="查询次数">
        <template slot-scope="scope">
          <span>{{ scope.row.query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column label="居住地">
        <template slot-scope="scope">
          <span>{{ scope.row.resident }}</span>
        </template>
      </el-table-column>
      <el-table-column label="期限">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_term }}</span>
        </template>
      </el-table-column>
      <el-table-column label="需要材料">
        <template slot-scope="scope">
          <span>{{ scope.row.material }}</span>
        </template>
      </el-table-column>
      <el-table-column label="征信要求">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column label="提前还款">
        <template slot-scope="scope">
          <span>{{ scope.row.prepayment }}</span>
        </template>
      </el-table-column>
      <el-table-column label="进件要求">
        <template slot-scope="scope">
          <span>{{ scope.row.incoming_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column label="申请流程">
        <template slot-scope="scope">
          <span>{{ scope.row.application_process }}</span>
        </template>
      </el-table-column>
      <el-table-column label="额度算法">
        <template slot-scope="scope">
          <span>{{ scope.row.quota_algorithm }}</span>
        </template>
      </el-table-column>
      <el-table-column label="负债算法">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_algorithm }}</span>
        </template>
      </el-table-column>-->
    </el-table>
  </div>
</template>

<style lang="scss">
#query {
  // width: 400px;
  .query-form {
    .el-form-item__label {
      text-align-last: justify;
    }
  }
}
</style>
