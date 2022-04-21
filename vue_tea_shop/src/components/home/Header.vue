<template>
	<header>
		<h1>
			<img src="@/assets/images/tea.svg" alt="">
		</h1>
		<div class='search' @click='goSearch'>
			<i class='iconfont icon-fangdajing'></i>
			<span>搜您喜欢的...</span>
		</div>
		<div class='kefu'>
			<i class='iconfont icon-kefu'></i>
		</div>
		
	</header>
	
</template>

<script>
export default{
	methods:{
		goSearch(){
			this.$router.push('/search')
		}
	}
}
</script>

<style scoped>
header {
	display: flex;
	justify-content: space-around;
	align-items:center;
	background-color: #b0352f;
	width: 100%;
	height: 1.6rem;
}
/* header{
	display: flex;
	justify-content: space-around;
	align-items: center;
	width: 100%;
	height: 1.6rem;
	background-color: #b0352f;
} */
header h1{
	display: flex;
	align-items: center;
	padding:0 0.266666rem;
	width:1.2rem;
	height: 1.333333rem;
}
header h1 img{
	width: 90%;
	height: 100%;
}
.search{
	display: flex;
	align-items: center;
	width: 7rem;
	height: 0.8rem;
	background-color: #FFFFFF;
	border-radius: 12px;
}
.search i {
	padding:0 0.16rem;
	color:#ccc;
}
.search span{
	font-size:0.373333rem;
	color:#ccc;
}
.kefu i{
	font-size:0.96rem;
	color:#fff;
} 

</style>