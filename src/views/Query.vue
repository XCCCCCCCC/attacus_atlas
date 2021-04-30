<script>
import { main } from '@/api/query'
export default {
  name: 'query',
  components: {},
  props: {},
  data() {
    return {
      labelWidth: '120px',
      queryForm: {
        id: '',
        date: new Date(),
        name: '马光泽', // 姓名
        telNum: '', // 手机号
        wechatNum: '', // 微信号
        identityCardNum: '', // 身份证号码
        education: 1, // 学历（专/本/硕/博）
        loanAmount: 0, // 贷款金额
        loanUse: '买东西', // 贷款用途
        age: 18, // 年龄
        isKnow: true, // 家人是否知晓（是/否）
        address: '上海市', // 地址
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
        policyHolder: '', // 投保人
        policyInsuranceCompany: '', // 保险公司
        policyPaymentMethod: 1, // 缴费方式（月/年）
        policyYearCost: '', // 年费（单位为元）
        policyPaymentPeriod: '', // 缴费时长（单位为月）
        // 征信
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
        debtCreditAmount: '', // 信用卡总额度
        debtCreditUsedAmount: '', // 已用额度
        debtLoanTimes: '', // 贷款次数
        debtLoanAmount: '', // 贷款总额
        debtOnlineLoanTimes: '', // 网贷次数
        debtOnlineLoanAmount: '', // 网贷总额
        debtThreeMonthQueryTimes: '', // 近3月查询
        debtSixMonthQueryTimes: '', // 近6月查询
      },
      queryFormRules: {
        name: [
          {
            required: true,
            message: '请输入姓名',
            trigger: 'blur',
          },
        ],
        education: [
          {
            required: true,
            message: '请选择学历',
            trigger: 'change',
          },
        ],
        loanAmount: [
          {
            required: true,
            message: '请输入贷款金额',
            trigger: 'blur',
          },
        ],
        loanUse: [
          {
            required: true,
            message: '请输入贷款用途',
            trigger: 'blur',
          },
        ],
        age: [
          {
            required: true,
            message: '请输入年龄',
            trigger: 'blur',
          },
        ],
        isKnow: [
          {
            required: true,
            message: '请选择父母是否知晓',
            trigger: 'change',
          },
        ],
        address: [
          {
            required: true,
            message: '请输入地址',
            trigger: 'blur',
          },
        ],
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
      this.$refs.queryForm.validate((valid) => {
        if (valid) {
          const keys = Object.keys(this.queryForm)
          const data = {}
          for (const key of keys) {
            data[this.hump2Underline(key)] = this.queryForm[key]
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
      ref="queryForm"
      :model="queryForm"
      :rules="queryFormRules"
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
              v-model="queryForm.date"
              style="width: 100%;"
            ></el-date-picker>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="姓名" prop="name">
            <el-input v-model="queryForm.name" placeholder="请输入姓名"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="手机号" prop="telNum">
            <el-input v-model="queryForm.telNum" placeholder="请输入手机号"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="微信号" prop="wechatNum">
            <el-input v-model="queryForm.wechatNum" placeholder="请输入微信号"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="身份证号码" prop="identityCardNum">
            <el-input v-model="queryForm.identityCardNum" placeholder="请输入身份证号码"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="学历" prop="education">
            <el-radio-group v-model="queryForm.education" placeholder="请选择学历">
              <el-radio :label="1">专</el-radio>
              <el-radio :label="2">本</el-radio>
              <el-radio :label="3">硕</el-radio>
              <el-radio :label="4">博</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row :gutter="22">
        <el-col :span="8">
          <el-form-item label="贷款金额" prop="loanAmount">
            <el-input-number
              v-model="queryForm.loanAmount"
              controls-position="right"
              :min="1"
              style="width: 100%;"
              placeholder="请输入贷款金额"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款用途" prop="loanUse">
            <el-input v-model="queryForm.loanUse" placeholder="请输入贷款用途"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="年龄" prop="age">
            <el-input-number
              v-model="queryForm.age"
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
            <el-radio-group v-model="queryForm.isKnow" placeholder="请选择家人是否知晓">
              <el-radio :label="true">是</el-radio>
              <el-radio :label="false">否</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="地址" prop="address">
            <el-input type="textarea" v-model="queryForm.address" placeholder="请输入地址"></el-input>
          </el-form-item>
        </el-col>
      </el-row>
      <!-- 上班 -->
      <el-divider>上班</el-divider>
      <el-form-item label="上班">
        <el-switch v-model="queryForm.hasWork" placeholder="请选择上班"></el-switch>
      </el-form-item>
      <template v-if="queryForm.hasWork">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="公积金" prop="workAccumulationFund">
              <el-input-number
                v-model="queryForm.workAccumulationFund"
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
                v-model="queryForm.workSocialSecurity"
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
                v-model="queryForm.workSalary"
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
                v-model="queryForm.workHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入工作时长"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="公司性质" prop="workCompanyNature">
              <el-radio-group v-model="queryForm.workCompanyNature" placeholder="请选择公司性质">
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
        <el-switch v-model="queryForm.hasBusiness"></el-switch>
      </el-form-item>
      <template v-if="queryForm.hasBusiness">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="营业执照" prop="businessLicense">
              <el-input v-model="queryForm.businessLicense"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="职位" prop="businessPosition">
              <el-input v-model="queryForm.businessPosition"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营时长" prop="businessHour">
              <el-input-number
                v-model="queryForm.businessHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营地址" prop="businessAddress">
              <el-input type="textarea" v-model="queryForm.businessAddress"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="经营行业" prop="businessIndustry">
              <el-input v-model="queryForm.businessIndustry"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 房 -->
      <el-divider>房</el-divider>
      <el-form-item label="房">
        <el-switch v-model="queryForm.hasHouse" placeholder="请选择房"></el-switch>
      </el-form-item>
      <template v-if="queryForm.hasHouse">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="是否本地" prop="houseLocal">
              <el-radio-group v-model="queryForm.houseLocal" placeholder="请选择是否本地">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="区域" prop="houseRegion">
              <el-input v-model="queryForm.houseRegion" placeholder="请输入区域"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="市值（万）" prop="businessHour">
              <el-input-number
                v-model="queryForm.businessHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入市值（万）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="购买方式" prop="houseBuyMethod">
              <el-radio-group v-model="queryForm.houseBuyMethod" placeholder="请选择购买方式">
                <el-radio :label="1">全款</el-radio>
                <el-radio :label="2">按揭</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <template v-if="queryForm.houseBuyMethod === 2">
            <el-col :span="8">
              <el-form-item label="月供（元）" prop="houseMonthlyPayment">
                <el-input-number
                  v-model="queryForm.houseMonthlyPayment"
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
                  v-model="queryForm.housePaymentPeriod"
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
                v-model="queryForm.houseAge"
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
                v-model="queryForm.houseInterestNum"
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
                v-model="queryForm.houseInterestAge"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入权利人年龄"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="是否抵押" prop="houseIsMortage">
              <el-radio-group v-model="queryForm.houseIsMortage" placeholder="请选择是否抵押">
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
        <el-switch v-model="queryForm.hasCar" placeholder="请选择车"></el-switch>
      </el-form-item>
      <template v-if="queryForm.hasCar">
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="是否本地" prop="carLocal">
              <el-radio-group v-model="queryForm.carLocal" placeholder="请选择是否本地">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="车牌" prop="carLicense">
              <el-input v-model="queryForm.carLicense" placeholder="请输入车牌"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="价值（万）" prop="carValue">
              <el-input-number
                v-model="queryForm.carValue"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入价值（万）"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="购买方式" prop="carBuyMethod">
              <el-radio-group v-model="queryForm.carBuyMethod" placeholder="请选择购买方式">
                <el-radio :label="1">全款</el-radio>
                <el-radio :label="2">按揭</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <template v-if="queryForm.houseBuyMethod === 2">
            <el-col :span="8">
              <el-form-item label="月供（元）" prop="carMonthlyPayment">
                <el-input-number
                  v-model="queryForm.carMonthlyPayment"
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
                  v-model="queryForm.carMonthlyPeriod"
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
                v-model="queryForm.carAge"
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
                v-model="queryForm.carUseKm"
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
      <el-row :gutter="28">
        <el-col :span="8">
          <el-form-item label="投保人" prop="policyHolder">
            <el-input v-model="queryForm.policyHolder" placeholder="请输入投保人"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="保险公司" prop="policyInsuranceCompany">
            <el-input v-model="queryForm.policyInsuranceCompany" placeholder="请输入保险公司"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="缴费方式" prop="policyPaymentMethod">
            <el-radio-group v-model="queryForm.policyPaymentMethod" placeholder="请选择缴费方式">
              <el-radio :label="1">月</el-radio>
              <el-radio :label="2">年</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="年费（元）" prop="policyYearCost">
            <el-input-number
              v-model="queryForm.policyYearCost"
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
              v-model="queryForm.policyPaymentPeriod"
              controls-position="right"
              :min="0"
              style="width: 100%;"
              placeholder="请输入缴费时长（月）"
            ></el-input-number>
          </el-form-item>
        </el-col>
      </el-row>

      <!-- 征信 -->
      <el-divider>征信</el-divider>

      <el-form-item label="是否当前有逾期" prop="creditIsDelay">
        <el-radio-group v-model="queryForm.creditIsDelay" placeholder="请选择是否当前有逾期">
          <el-radio :label="true">是</el-radio>
          <el-radio :label="false">否</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-row :gutter="28">
        <template v-if="queryForm.creditIsDelay">
          <el-col :span="8">
            <el-form-item label="近3月逾期次" prop="creditThreeMonthDelayTimes">
              <el-input-number
                v-model="queryForm.creditThreeMonthDelayTimes"
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
                v-model="queryForm.creditSixMonthDelayTimes"
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
                v-model="queryForm.creditYearDelayTimes"
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
                v-model="queryForm.creditTwoYearDelayTimes"
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
                v-model="queryForm.creditSeriesThreeMonthDelayTimes"
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
                v-model="queryForm.creditSeriesSixMonthDelayTimes"
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
                v-model="queryForm.creditSeriesYearDelayTimes"
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
                v-model="queryForm.creditSeriesTwoYearDelayTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入"
              ></el-input-number>
            </el-form-item>
          </el-col>
        </template>
      </el-row>

      <!-- 负债 -->
      <el-divider>负债</el-divider>
      <el-row :gutter="28">
        <el-col :span="8">
          <el-form-item label="信用卡总额度" prop="debtCreditAmount">
            <el-input-number
              v-model="queryForm.debtCreditAmount"
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
              v-model="queryForm.debtCreditUsedAmount"
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
              v-model="queryForm.debtLoanTimes"
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
              v-model="queryForm.debtLoanAmount"
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
              v-model="queryForm.debtOnlineLoanTimes"
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
              v-model="queryForm.debtOnlineLoanAmount"
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
              v-model="queryForm.debtThreeMonthQueryTimes"
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
              v-model="queryForm.debtSixMonthQueryTimes"
              controls-position="right"
              :min="0"
              style="width: 100%;"
              placeholder="请输入近6月查询"
            ></el-input-number>
          </el-form-item>
        </el-col>
      </el-row>

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
      <el-table-column label="国籍">
        <template slot-scope="scope">
          <span>{{ scope.row.nation }}</span>
        </template>
      </el-table-column>
      <el-table-column label="年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.age }}</span>
        </template>
      </el-table-column>
      <el-table-column label="贷款额度">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column label="贷款利息">
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
      </el-table-column>
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
