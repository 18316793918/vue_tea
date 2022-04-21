<template>
	<div>
		<header>
			<div class='search-return' @click='goBack'>
				<i class='iconfont icon-fanhui'></i>
			</div>
			<div class='search-main'>
				<i class='iconfont icon-fangdajing'></i>
				<form action="" onsubmit="return false" @keyup.enter='goSearchList'>
					<input type="text" placeholder="搜索您喜欢的产品..." v-model='searchVal'
					@blur="searchBlur" @focus="searchFocus" ref="searchInputRef">
				</form>
				
			</div>
			<div class='serach-btn' @click='goSearchList'>搜索</div>
		</header>
		<SearchList v-show="isSearchList" :searchResultList="searchResult"></SearchList>
	</div>
	
</template>

<script>
import SearchList from './SearchList.vue'
import http from '@/common/api/request.js'
export default{
	data () {
		return {
			searchVal:this.$route.query.key,
			searchArr:[],
			isSearchList:false,
			searchData:[],
			searchResult:[],
			CurrentVal:""
		}
	},
	methods:{
		goBack(){
			this.$router.back();
		},
		goSearchList(){
			//如果搜索的关键字是没有的，那就直接return
			if( !this.searchVal ) return;
			//判断之前有没有搜索的本地存储
			if( !localStorage.getItem('searchList')  ){
				//没有
				localStorage.setItem('searchList','[]');
			}else{
				//之前有
				this.searchArr = JSON.parse(  localStorage.getItem('searchList')  );
			}
			//增加数据
			this.searchArr.unshift( this.searchVal );
			//ES6去重
			let newArr = new Set(this.searchArr);
			//给本地存储赋值
			localStorage.setItem('searchList',JSON.stringify(Array.from(newArr)));
			
			//路径如果没有变化，不跳转页面
			if( this.searchVal === this.$route.query.key  ) return;
			//跳转页面
			this.$router.push({
				name:'list',
				query:{
					key:this.searchVal
				}
			})
			
		},
		async getData() {
			let res = await http.$axios({
            	url:'/api/searchData',
                method:"post",
				data:{
					CurrentVal:this.CurrentVal
				}
            }).then(res => {
				res.result.forEach((item) => {
					this.searchResult.push(item.name)
				})
			})
		},
		searchBlur() {
			this.isSearchList = false;
			this.searchResult = [];
		},
		searchFocus() {
			var debounceFunc = this.debounce(800
			);
			this.$refs.searchInputRef.addEventListener("keyup",function(e) {
				debounceFunc(e.target.value)
			})
			if(this.searchVal !== "") {
				this.isSearchList = true;
			} else {
				this.isSearchList = false; 
			}
		},
		debounce(delay) {
			let timer;
			let self = this;
			return function(value) {
				clearTimeout(timer)
				timer = setTimeout(function() {
					self.searchResult = [];
					self.CurrentVal = value;
					if(self.searchVal !== "") {
						self.getData();
					}
				},delay)
			}
		}
	},
	components:{
		SearchList
	}
}
</script>

<style scoped>
header{
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 100%;
	height: 1.173333rem;
	color:#fff;
	background-color: #b0352f;
}
.search-return,.serach-btn{
	padding:0 0.266666rem;
}
.search-return i{
	font-size:0.746666rem;
}
.search-main{
	display: flex;
	align-items: center;
	width: 6.933333rem;
	height: 0.8rem;
	/* border-radius: 12px; */
	background-color: #FFFFFF;
}
.search-main i{
	padding:0 0.266666rem;
	color:#666666;
}
.search-main form{
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
}
.search-main form input{
	width: 100%;
	color:#333;
	font-size:14px;
}
.serach-btn{
	font-size:0.426666rem;
}
</style>