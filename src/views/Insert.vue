<script>
import { add } from '@/api/storage'
export default {
  name: '',
  components: {},
  props: {},
  data() {
    return {
      labelWidth: '140px',
      summaryForm: {
        // id: '', //
        // loanType: '', // 贷款类型
        // loanName: '', // 贷款机构名称
        // nation: '', // 国籍
        // age: 18, // 年龄
        // loanLimit: '', // 贷款额度
        // loanInterest: '', // 贷款利息
        // repaymentMethod: '', // 还款方式
        // queryTimes: 0, // 查询次数
        // residence: '', // 居住地
        // repaymentTerm: '', // 期限
        // material: '', // 需要材料
        // creditRequirements: '', // 征信要求
        // prepayment: '', // 提前还款
        // incomingRequirements: '', // 进件要求
        // applicationProcess: '', // 申请流程
        // quotaAlgorithm: '', // 额度算法
        // debtAlgorithm: '', // 负债算法
        orgInfo: '', // 摘要
      },
      summaryFormRules: {},
      detailForm: {
        id: '',
        loanType: '', // 贷款类型
        loanName: '', // 贷款机构名称
        lowAge: 0, // 最小年龄
        highAge: 0, // 最大年龄
        lowLoanLimit: 0, // 最低贷款额度
        highLoanLimit: 0, // 最高贷款额度
        isKnow: true, // 是否支持不通知家人
        isBlankRoster: false, // 是否支持白户
        // 上班
        hasWork: false,
        workAccumulationFund: 0, // 公积金
        workSocialSecurity: 0, // 社保
        workSalary: 0, // 打卡工资
        workHour: 0, // 工作时长
        workCompanyNature: [], // 公司性质（事业/国企/民营）
        // 生意
        hasBusiness: false,
        businessLicense: '', // 营业执照
        businessPosition: '', // 职位
        businessHour: '', // 经营时长
        businessAddress: '', // 经营地址
        businessIndustry: '', // 经营行业
        businessFlow: 0, // 流水
        businessTax: 0, // 税
        // 房产
        hasHouse: false,
        houseLocal: true, // 是否本地（上海/外地）
        houseRegion: '', // 区域
        houseBuyMethod: 1, // 购买方式（全款/按揭）
        houseValue: 0, // 市值（单位；万）
        houseSize: 0, // 面积（单位；平方）
        houseMonthlyPayment: 0, // 月供（元）
        housePaymentPeriod: 0, // 还款期数（月）
        houseAge: 0, // 房龄（年）
        houseInterestNum: 1, // 权利人数
        houseInterestAge: 0, // 权利人年龄
        houseIsMortage: false, // 是否抵押（是/否）
        // 车辆
        hasCar: false,
        carLocal: true, // 是否本地（是/否）
        carLicense: '', // 车牌
        carBuyMethod: 1, // 购买方式（全款/按揭）
        carValue: 0, // 价值（万）
        carMonthlyPayment: 0, // 月供（元）
        carMonthlyPeriod: 0, // 期数（月）
        carAge: 0, // 车龄（年）
        carUseKm: 0, // 里程数（公里）
        // 保单
        hasPolicy: false,
        policyHolder: '', // 投保人
        policyInsuranceCompany: '', // 保险公司
        policyPaymentMethod: 1, // 缴费方式（月/年）
        policyYearCost: 0, // 年费（元）
        policyPaymentPeriod: 0, // 缴费时长（月）
        policyPaymentTimes: 0, // 缴费次数
        // 征信
        hasCredit: false,
        creditIsDelay: false, // 是否支持当前有逾期（是/否）
        creditThreeMonthDelayTimes: 0, // 近3月逾期次数
        creditSixMonthDelayTimes: 0, // 近6月逾期次数
        creditYearDelayTimes: 0, // 近1年逾期次数
        creditTwoYearDelayTimes: 0, // 近2年逾期次数
        creditSeriesThreeMonthDelayTimes: 0, // 近3月连续逾期次数
        creditSeriesSixMonthDelayTimes: 0, // 近6月连续逾期次数
        creditSeriesYearDelayTimes: 0, // 近1年连续逾期次数
        creditSeriesTwoYearDelayTimes: 0, // 近2年连续逾期次数
        creditThreeMonthQueryTimes: 0, // 近3月查询
        creditSixMonthQueryTimes: 0, // 近6月查询
        creditYearQueryTimes: 0, // 近1年查询
        creditTwoYearQueryTimes: 0, // 近2年查询
        creditThreeMonthHasTimes: 0, // 近3月有
        creditSixMonthHasTimes: 0, // 近6月有
        creditYearHasTimes: 0, // 近1年有
        creditTwoYearHasTimes: 0, // 近2年有
        // 负债
        hasDebt: false,
        debtCreditAmount: 0, // 信用卡总额度
        debtCreditUsedAmount: 0, // 已用额度
        debtLoanTimes: 0, // 贷款次数
        debtLoanAmount: 0, // 贷款总额
        debtOnlineLoanTimes: 0, // 网贷次数
        debtOnlineLoanAmount: 0, // 网贷总额
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
    handleNumberChange(form, key) {
      if (this[form][key] === undefined) {
        this[form][key] = 0
      }
    },
    hump2Underline(s) {
      return s.replace(/([A-Z])/g, '_$1').toLowerCase()
    },
    onSubmit() {
      this.$refs.detailForm.validate((valid) => {
        if (valid) {
          const summaryKeys = Object.keys(this.summaryForm)
          const detailKeys = Object.keys(this.detailForm)
          const data = {}
          for (const key of summaryKeys) {
            data[this.hump2Underline(key)] = this.summaryForm[key]
          }
          for (const key of detailKeys) {
            data[this.hump2Underline(key)] = this.detailForm[key]
          }
          add(data)
            .then((res) => {
              this.$message({
                message: '存储成功！',
                type: 'success',
                onClose: () => {
                  this.$router.push({ path: 'storage' })
                },
              })
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
  <div id="insert">
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
        <el-col :span="24">
          <el-form-item label="贷款机构信息" prop="orgInfo">
            <el-input type="textarea" :rows="8" v-model="summaryForm.orgInfo" placeholder="请输入地址"></el-input>
          </el-form-item>
        </el-col>
        <!-- <el-col :span="8">
          <el-form-item label="贷款类型" prop="loanType">
            <el-input v-model="summaryForm.loanType" placeholder="请输入贷款类型"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款机构名称" prop="loanName">
            <el-input v-model="summaryForm.loanName" placeholder="请输入贷款机构名称"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="国籍" prop="nation">
            <el-input v-model="summaryForm.nation" placeholder="请输入国籍"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="年龄" prop="age">
            <el-input v-model="summaryForm.age" placeholder="请输入年龄"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款额度" prop="loanLimit">
            <el-input v-model="summaryForm.loanLimit" placeholder="请输入贷款额度"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款利息" prop="loanInterest">
            <el-input v-model="summaryForm.loanInterest" placeholder="请输入贷款利息"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="还款方式" prop="repaymentMethod">
            <el-input v-model="summaryForm.repaymentMethod" placeholder="请输入还款方式"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="查询次数" prop="queryTimes">
            <el-input-number
              v-model="summaryForm.queryTimes"
              controls-position="right"
              :min="0"
              style="width: 100%;"
              placeholder="请输入查询次数"
              @change="handleNumberChange('summaryForm', 'queryTimes')"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="居住地" prop="residence">
            <el-input v-model="summaryForm.residence" placeholder="请输入居住地"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="期限" prop="repaymentTerm">
            <el-input v-model="summaryForm.repaymentTerm" placeholder="请输入期限"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="需要材料" prop="material">
            <el-input v-model="summaryForm.material" placeholder="请输入需要材料"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="征信要求" prop="creditRequirements">
            <el-input v-model="summaryForm.creditRequirements" placeholder="请输入征信要求"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="提前还款" prop="prepayment">
            <el-input v-model="summaryForm.prepayment" placeholder="请输入提前还款"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="进件要求" prop="incomingRequirements">
            <el-input v-model="summaryForm.incomingRequirements" placeholder="请输入进件要求"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="申请流程" prop="applicationProcess">
            <el-input v-model="summaryForm.applicationProcess" placeholder="请输入申请流程"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="额度算法" prop="quotaAlgorithm">
            <el-input v-model="summaryForm.quotaAlgorithm" placeholder="请输入额度算法"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="负债算法" prop="debtAlgorithm">
            <el-input v-model="summaryForm.debtAlgorithm" placeholder="请输入负债算法"></el-input>
          </el-form-item>
        </el-col>-->
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
          <el-form-item label="贷款类型" prop="loanType">
            <el-input v-model="detailForm.loanType" placeholder="请输入贷款类型"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="贷款机构名称" prop="loanName">
            <el-input v-model="detailForm.loanName" placeholder="请输入贷款机构名称"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="最小年龄（年）" prop="lowAge">
            <el-input-number
              v-model="detailForm.lowAge"
              controls-position="right"
              :min="0"
              :max="100"
              style="width: 100%;"
              placeholder="请输入最小年龄"
              @change="handleNumberChange('detailForm', 'lowAge')"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="最大年龄（年）" prop="highAge">
            <el-input-number
              v-model="detailForm.highAge"
              controls-position="right"
              :min="0"
              :max="100"
              style="width: 100%;"
              placeholder="请输入最大年龄"
              @change="handleNumberChange('detailForm', 'highAge')"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="最低贷款额度（万）" prop="lowLoanLimit">
            <el-input-number
              v-model="detailForm.lowLoanLimit"
              controls-position="right"
              :min="0"
              style="width: 100%;"
              placeholder="请输入最低贷款额度"
              @change="handleNumberChange('detailForm', 'lowLoanLimit')"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="最高贷款额度（万）" prop="highLoanLimit">
            <el-input-number
              v-model="detailForm.highLoanLimit"
              controls-position="right"
              :min="0"
              style="width: 100%;"
              placeholder="请输入最高贷款额度"
              @change="handleNumberChange('detailForm', 'highLoanLimit')"
            ></el-input-number>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="是否支持不通知家人" prop="isKnow">
            <el-radio-group v-model="detailForm.isKnow" placeholder="请选择是否支持不通知家人">
              <el-radio :label="true">是</el-radio>
              <el-radio :label="false">否</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="是否支持白户" prop="isBlankRoster">
            <el-radio-group v-model="detailForm.isBlankRoster" placeholder="请选择是否支持白户">
              <el-radio :label="true">是</el-radio>
              <el-radio :label="false">否</el-radio>
            </el-radio-group>
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
            <el-form-item label="公积金（元）" prop="workAccumulationFund">
              <el-input-number
                v-model="detailForm.workAccumulationFund"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入公积金"
                @change="handleNumberChange('detailForm', 'workAccumulationFund')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="社保（元）" prop="workSocialSecurity">
              <el-input-number
                v-model="detailForm.workSocialSecurity"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入社保"
                @change="handleNumberChange('detailForm', 'workSocialSecurity')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="打卡工资（元）" prop="workSalary">
              <el-input-number
                v-model="detailForm.workSalary"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入打卡工资"
                @change="handleNumberChange('detailForm', 'workSalary')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="工作时长（月）" prop="workHour">
              <el-input-number
                v-model="detailForm.workHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入工作时长"
                @change="handleNumberChange('detailForm', 'workHour')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="16">
            <el-form-item label="公司性质" prop="workCompanyNature">
              <el-checkbox-group v-model="detailForm.workCompanyNature" placeholder="请选择公司性质">
                <el-checkbox :label="1">事业</el-checkbox>
                <el-checkbox :label="2">国企</el-checkbox>
                <el-checkbox :label="3">民营</el-checkbox>
                <el-checkbox :label="4">其他</el-checkbox>
              </el-checkbox-group>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 生意 -->
      <el-divider>生意</el-divider>
      <el-form-item label="生意">
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
            <el-form-item label="经营时长（月）" prop="businessHour">
              <el-input-number
                v-model="detailForm.businessHour"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                @change="handleNumberChange('detailForm', 'businessHour')"
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
          <el-col :span="8">
            <el-form-item label="流水（万）" prop="businessFlow">
              <el-input v-model="detailForm.businessFlow"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="生意缴纳税额(元)" prop="businessTax">
              <el-input v-model="detailForm.businessTax"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <!-- 房产 -->
      <el-divider>房产</el-divider>
      <el-form-item label="房产">
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
            <el-form-item label="区域（用|分隔）" prop="houseRegion">
              <el-input v-model="detailForm.houseRegion" placeholder="请输入区域"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="市值（万）" prop="houseValue">
              <el-input-number
                v-model="detailForm.houseValue"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入市值"
                @change="handleNumberChange('detailForm', 'houseValue')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="面积（平方）" prop="houseSize">
              <el-input-number
                v-model="detailForm.houseSize"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入面积"
                @change="handleNumberChange('detailForm', 'houseSize')"
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
                  placeholder="请输入月供"
                  @change="handleNumberChange('detailForm', 'houseMonthlyPayment')"
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
                  placeholder="请输入还款期数"
                  @change="handleNumberChange('detailForm', 'housePaymentPeriod')"
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
                placeholder="请输入房龄"
                @change="handleNumberChange('detailForm', 'houseAge')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="权利人数（个）" prop="houseInterestNum">
              <el-input-number
                v-model="detailForm.houseInterestNum"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入权利人数"
                @change="handleNumberChange('detailForm', 'houseInterestNum')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="权利人年龄（年）" prop="houseInterestAge">
              <el-input-number
                v-model="detailForm.houseInterestAge"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入权利人年龄"
                @change="handleNumberChange('detailForm', 'houseInterestAge')"
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
      <!-- 车辆 -->
      <el-divider>车辆</el-divider>
      <el-form-item label="车辆">
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
                placeholder="请输入价值"
                @change="handleNumberChange('detailForm', 'carValue')"
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
          <template v-if="detailForm.carBuyMethod === 2">
            <el-col :span="8">
              <el-form-item label="月供（元）" prop="carMonthlyPayment">
                <el-input-number
                  v-model="detailForm.carMonthlyPayment"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入月供"
                  @change="handleNumberChange('detailForm', 'carMonthlyPayment')"
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
                  placeholder="请输入还款期数"
                  @change="handleNumberChange('detailForm', 'carMonthlyPeriod')"
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
                placeholder="请输入车龄"
                @change="handleNumberChange('detailForm', 'carAge')"
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
                placeholder="请输入里程数"
                @change="handleNumberChange('detailForm', 'carUseKm')"
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
        </el-row>
        <el-row :gutter="28">
          <el-col :span="8">
            <el-form-item label="年费（元）" prop="policyYearCost">
              <el-input-number
                v-model="detailForm.policyYearCost"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入年费"
                @change="handleNumberChange('detailForm', 'policyYearCost')"
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
                placeholder="请输入缴费时长"
                @change="handleNumberChange('detailForm', 'policyPaymentPeriod')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="缴纳次数" prop="policyPaymentTimes">
              <el-input-number
                v-model="detailForm.policyPaymentTimes"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入缴费时长"
                @change="handleNumberChange('detailForm', 'policyPaymentTimes')"
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
        <el-form-item label="是否支持当前有逾期" prop="creditIsDelay">
          <el-radio-group v-model="detailForm.creditIsDelay" placeholder="请选择是否支持当前有逾期">
            <el-radio :label="true">是</el-radio>
            <el-radio :label="false">否</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-row :gutter="28">
          <template>
            <el-col :span="8">
              <el-form-item label="近3月逾期次" prop="creditThreeMonthDelayTimes">
                <el-input-number
                  v-model="detailForm.creditThreeMonthDelayTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近3月逾期次"
                  @change="handleNumberChange('detailForm', 'creditThreeMonthDelayTimes')"
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
                  @change="handleNumberChange('detailForm', 'creditSixMonthDelayTimes')"
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
                  @change="handleNumberChange('detailForm', 'creditYearDelayTimes')"
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
                  @change="handleNumberChange('detailForm', 'creditTwoYearDelayTimes')"
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
                  @change="handleNumberChange('detailForm', 'creditSeriesThreeMonthDelayTimes')"
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
                  placeholder="请输入近6月连续逾期次"
                  @change="handleNumberChange('detailForm', 'creditSeriesSixMonthDelayTimes')"
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
                  placeholder="请输入近1年连续逾期次"
                  @change="handleNumberChange('detailForm', 'creditSeriesYearDelayTimes')"
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
                  placeholder="请输入近2年连续逾期次"
                  @change="handleNumberChange('detailForm', 'creditSeriesTwoYearDelayTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近3月查询" prop="creditThreeMonthQueryTimes">
                <el-input-number
                  v-model="detailForm.creditThreeMonthQueryTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近3月查询"
                  @change="handleNumberChange('detailForm', 'creditThreeMonthQueryTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近6月查询" prop="creditSixMonthQueryTimes">
                <el-input-number
                  v-model="detailForm.creditSixMonthQueryTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近6月查询"
                  @change="handleNumberChange('detailForm', 'creditSixMonthQueryTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近1年查询" prop="creditYearQueryTimes">
                <el-input-number
                  v-model="detailForm.creditYearQueryTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近1年查询"
                  @change="handleNumberChange('detailForm', 'creditYearQueryTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近2年查询" prop="creditTwoYearQueryTimes">
                <el-input-number
                  v-model="detailForm.creditTwoYearQueryTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近2年查询"
                  @change="handleNumberChange('detailForm', 'creditTwoYearQueryTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近3月有（次）" prop="creditThreeMonthHasTimes">
                <el-input-number
                  v-model="detailForm.creditThreeMonthHasTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近3月有（次）"
                  @change="handleNumberChange('detailForm', 'creditThreeMonthHasTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近6月有（次）" prop="creditSixMonthHasTimes">
                <el-input-number
                  v-model="detailForm.creditSixMonthHasTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近6月有（次）"
                  @change="handleNumberChange('detailForm', 'creditSixMonthHasTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近1年有（次）" prop="creditYearHasTimes">
                <el-input-number
                  v-model="detailForm.creditYearHasTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近1年有（次）"
                  @change="handleNumberChange('detailForm', 'creditYearHasTimes')"
                ></el-input-number>
              </el-form-item>
            </el-col>
            <el-col :span="8">
              <el-form-item label="近2年有（次）" prop="creditTwoYearHasTimes">
                <el-input-number
                  v-model="detailForm.creditTwoYearHasTimes"
                  controls-position="right"
                  :min="0"
                  style="width: 100%;"
                  placeholder="请输入近2年有（次）"
                  @change="handleNumberChange('detailForm', 'creditTwoYearHasTimes')"
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
            <el-form-item label="信用卡总额度（万）" prop="debtCreditAmount">
              <el-input-number
                v-model="detailForm.debtCreditAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入信用卡总额度"
                @change="handleNumberChange('detailForm', 'debtCreditAmount')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="已用额度（万）" prop="debtCreditUsedAmount">
              <el-input-number
                v-model="detailForm.debtCreditUsedAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入已用额度"
                @change="handleNumberChange('detailForm', 'debtCreditUsedAmount')"
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
                @change="handleNumberChange('detailForm', 'debtLoanTimes')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="贷款总额（万）" prop="debtLoanAmount">
              <el-input-number
                v-model="detailForm.debtLoanAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入贷款总额"
                @change="handleNumberChange('detailForm', 'debtLoanAmount')"
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
                @change="handleNumberChange('detailForm', 'debtOnlineLoanTimes')"
              ></el-input-number>
            </el-form-item>
          </el-col>
          <el-col :span="8">
            <el-form-item label="网贷总额（万）" prop="debtOnlineLoanAmount">
              <el-input-number
                v-model="detailForm.debtOnlineLoanAmount"
                controls-position="right"
                :min="0"
                style="width: 100%;"
                placeholder="请输入网贷总额"
                @change="handleNumberChange('detailForm', 'debtOnlineLoanAmount')"
              ></el-input-number>
            </el-form-item>
          </el-col>
        </el-row>
      </template>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">添加</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<style lang="scss">
#insert {
  // width: 400px;
  .el-form-item__label {
    text-align-last: justify;
  }
}
</style>
