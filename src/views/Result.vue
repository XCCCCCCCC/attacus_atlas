<script>
export default {
  name: 'result',
  components: {},
  props: {},
  data() {
    return {
      result: [],
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
  methods: {},
}
</script>

<template>
  <div id="result">
    <el-table :data="result" style="width: 100%,">
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
#result {
}
</style>
