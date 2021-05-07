import Vue from 'vue'
// import '@/styles/element-variables.scss'
import 'element-ui/lib/theme-chalk/index.css'
import {
  Container,
  Header,
  Aside,
  Main,
  Footer,
  Row,
  Col,
  Loading,
  Message,
  Dialog,
  Upload,
  Button,
  Form,
  FormItem,
  Input,
  InputNumber,
  Radio,
  RadioGroup,
  RadioButton,
  Checkbox,
  CheckboxButton,
  CheckboxGroup,
  Select,
  Option,
  DatePicker,
  TimeSelect,
  TimePicker,
  Switch,
  Divider,
  Table,
  TableColumn,
  Pagination,
} from 'element-ui'

Vue.use(Row)
Vue.use(Col)
Vue.use(Container)
Vue.use(Header)
Vue.use(Aside)
Vue.use(Main)
Vue.use(Footer)
Vue.use(Dialog)
Vue.use(Upload)
Vue.use(Button)
Vue.use(Form)
Vue.use(FormItem)
Vue.use(Input)
Vue.use(InputNumber)
Vue.use(Radio)
Vue.use(RadioGroup)
Vue.use(RadioButton)
Vue.use(Checkbox)
Vue.use(CheckboxButton)
Vue.use(CheckboxGroup)
Vue.use(Select)
Vue.use(Option)
Vue.use(DatePicker)
Vue.use(TimeSelect)
Vue.use(TimePicker)
Vue.use(Switch)
Vue.use(Divider)
Vue.use(Table)
Vue.use(TableColumn)
Vue.use(Pagination)
Vue.use(Loading.directive)

Vue.prototype.$loading = Loading.service
Vue.prototype.$message = Message
