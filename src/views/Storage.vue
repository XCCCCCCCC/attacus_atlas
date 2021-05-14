<script>
import { list, remove } from '@/api/storage'
export default {
  name: 'storage',
  components: {},
  props: {},
  data() {
    return {
      resultData: [],
      page: 1,
      pageSize: 10,
      total: 0,
    }
  },
  computed: {},
  watch: {},
  beforeCreate() {},
  created() {
    this.handleRefresh()
  },
  beforeMount() {},
  mounted() {},
  beforeUpdate() {},
  updated() {},
  activated() {},
  deactivated() {},
  beforeDestroy() {},
  destroyed() {},
  methods: {
    toInsert() {
      this.$router.push({ path: '/insert' })
    },
    handleRemove(row) {
      const params = {
        name: row.loan_name,
        type: row.loan_type,
      }
      remove(params).then(() => {
        this.handleRefresh()
      })
    },
    handleRefresh() {
      const params = {
        page: this.page,
        pageSize: this.pageSize,
      }
      list(params)
        .then((res) => {
          this.total = res.total
          this.resultData = res.data
        })
        .catch((err) => {})
    },
  },
}
</script>

<template>
  <div id="storage">
    <div class="c-wrapper">
      <el-button type="primary" @click="toInsert">新增</el-button>
    </div>
    <el-table border :data="resultData" style="width: 100%,">
      <!-- <el-table-column :width="150" show-overflow-tooltip label="序号">
        <template slot-scope="scope">
          <span>{{ scope.row.id }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款类型">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_type }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款机构名称">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_name }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="国籍">
        <template slot-scope="scope">
          <span>{{ scope.row.nation }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款额度">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款利息">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_interest }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="还款方式">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_method }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="查询次数">
        <template slot-scope="scope">
          <span>{{ scope.row.query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="居住地">
        <template slot-scope="scope">
          <span>{{ scope.row.resident }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="期限">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_term }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="需要材料">
        <template slot-scope="scope">
          <span>{{ scope.row.material }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信要求">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="提前还款">
        <template slot-scope="scope">
          <span>{{ scope.row.prepayment }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="进件要求">
        <template slot-scope="scope">
          <span>{{ scope.row.incoming_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="申请流程">
        <template slot-scope="scope">
          <span>{{ scope.row.application_process }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="额度算法">
        <template slot-scope="scope">
          <span>{{ scope.row.quota_algorithm }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债算法">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_algorithm }}</span>
        </template>
      </el-table-column>-->
      <!-- <el-table-column :width="150" show-overflow-tooltip label="国籍">
        <template slot-scope="scope">
          <span>{{ scope.row.nation }}</span>
        </template>
      </el-table-column>-->
      <el-table-column :width="350" show-overflow-tooltip label="贷款机构信息" :min-width="200">
        <template slot-scope="scope">
          <span>{{ scope.row.org_info }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款类型">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_type }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="贷款机构名称">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_name }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="最小年龄（年）">
        <template slot-scope="scope">
          <span>{{ scope.row.low_age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="最大年龄（年）">
        <template slot-scope="scope">
          <span>{{ scope.row.high_age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="最低贷款额度（万）">
        <template slot-scope="scope">
          <span>{{ scope.row.low_loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="最高贷款额度（万）">
        <template slot-scope="scope">
          <span>{{ scope.row.high_loan_limit }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="是否白户（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.is_blank_roster }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="家人是否知道（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.is_know }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="是否上班（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_work }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="上班公积金（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.work_accumulation_fund }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="上班社保（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.work_social_security }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="上班打卡工资（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.work_salary }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="公积金缴纳时长（月）">
        <template slot-scope="scope">
          <span>{{ scope.row.work_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="上班公司性质">
        <template slot-scope="scope">
          <span>{{ scope.row.work_company_nature }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="是否做生意（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_business }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意营业执照">
        <template slot-scope="scope">
          <span>{{ scope.row.business_license }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意职位">
        <template slot-scope="scope">
          <span>{{ scope.row.business_position }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="做生意经营时长（年）">
        <template slot-scope="scope">
          <span>{{ scope.row.business_hour }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意经营地址">
        <template slot-scope="scope">
          <span>{{ scope.row.business_address }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意经营行业">
        <template slot-scope="scope">
          <span>{{ scope.row.business_industry }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意流水（万）">
        <template slot-scope="scope">
          <span>{{ scope.row.business_flow }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="做生意税（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.business_tax }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="是否有房产（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_house }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="房屋是否本地（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_local }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋区域">
        <template slot-scope="scope">
          <span>{{ scope.row.house_region }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋购买方式">
        <template slot-scope="scope">
          <span>{{ scope.row.house_buy_method }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋市值（万）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_value }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋月供（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_monthly_payment }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋还款期数（月）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房龄（年）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋权利人数">
        <template slot-scope="scope">
          <span>{{ scope.row.house_interest_num }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="房屋权利人年龄">
        <template slot-scope="scope">
          <span>{{ scope.row.house_interest_age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="房屋是否抵押（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.house_is_mortgage }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="是否有车（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_car }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车是否本地（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_local }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车牌照">
        <template slot-scope="scope">
          <span>{{ scope.row.car_license }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车购买方式">
        <template slot-scope="scope">
          <span>{{ scope.row.car_buy_method }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车辆市值（万）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_value }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车月供（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_monthly_payment }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车还款期数（月）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_payment_period }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="车龄（年）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_age }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="里程数（公里）">
        <template slot-scope="scope">
          <span>{{ scope.row.car_use_km }}</span>
        </template>
      </el-table-column>

      <el-table-column :width="150" show-overflow-tooltip label="是否有保单（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_policy }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="保单投保人">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_holder }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="保单保险公司">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_insurance_company }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="保单缴费方式">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_payment_method }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="保单年费（元）">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_year_cost }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="保单缴费时长（月）">
        <template slot-scope="scope">
          <span>{{ scope.row.policy_payemnt_period }}</span>
        </template>
      </el-table-column>

      <el-table-column :width="150" show-overflow-tooltip label="是否有征信(Y/N)">
        <template slot-scope="scope">
          <span>{{ scope.row.has_credit }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="200" show-overflow-tooltip label="征信是否当前有逾期(是/否)">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_is_delay }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近3月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_three_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近6月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_six_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近12月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近24月逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_two_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="征信近3月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_three_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="征信近6月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_six_month_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="征信近12月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="180" show-overflow-tooltip label="征信近24月连续逾期次">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_series_two_year_delay_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近3月查询">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_three_month_query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近6月查询">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_six_month_query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近1年查询">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_year_query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信近2年查询">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_two_year_query_times }}</span>
        </template>
      </el-table-column>

      <el-table-column :width="150" show-overflow-tooltip label="是否有负债（Y/N）">
        <template slot-scope="scope">
          <span>{{ scope.row.has_debt }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债信用卡总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_credit_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债已用额度">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_credit_used_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债贷款笔数">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_loan_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债贷款总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_loan_amount }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债网贷笔数">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_online_loan_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债网贷总额">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_online_loan_amount }}</span>
        </template>
      </el-table-column>

      <!-- <el-table-column :width="150" show-overflow-tooltip label="贷款利息">
        <template slot-scope="scope">
          <span>{{ scope.row.loan_interest }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="还款方式">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_method }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="查询次数">
        <template slot-scope="scope">
          <span>{{ scope.row.query_times }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="居住地">
        <template slot-scope="scope">
          <span>{{ scope.row.resident }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="期限">
        <template slot-scope="scope">
          <span>{{ scope.row.repayment_term }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="需要材料">
        <template slot-scope="scope">
          <span>{{ scope.row.material }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="征信要求">
        <template slot-scope="scope">
          <span>{{ scope.row.credit_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="提前还款">
        <template slot-scope="scope">
          <span>{{ scope.row.prepayment }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="进件要求">
        <template slot-scope="scope">
          <span>{{ scope.row.incoming_requirements }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="申请流程">
        <template slot-scope="scope">
          <span>{{ scope.row.application_process }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="额度算法">
        <template slot-scope="scope">
          <span>{{ scope.row.quota_algorithm }}</span>
        </template>
      </el-table-column>
      <el-table-column :width="150" show-overflow-tooltip label="负债算法">
        <template slot-scope="scope">
          <span>{{ scope.row.debt_algorithm }}</span>
        </template>
      </el-table-column>-->
      <el-table-column fixed="right" label="操作" width="70">
        <template slot-scope="scope">
          <el-popconfirm
            confirm-button-text="好的"
            cancel-button-text="取消"
            icon="el-icon-info"
            icon-color="red"
            title="确定删除吗？"
            @confirm="handleRemove(scope.row)"
          >
            <el-button slot="reference" type="text" size="small">删除</el-button>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
    <el-pagination
      @current-change="handleRefresh"
      :current-page.sync="page"
      :page-size="pageSize"
      layout="total, prev, pager, next"
      :total="total"
    ></el-pagination>
  </div>
</template>

<style lang="scss">
#storage {
  .c-wrapper {
    margin-bottom: 22px;
    text-align: right;
  }
  // width: 400px;
  .el-table {
    margin-bottom: 22px;
  }
}
</style>
