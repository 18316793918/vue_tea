<template>
    <div>
        <div class="searchList">
			<ul v-for="(item,index) in searchResultList" :key="index">
				<li class="searchSpan">{{item}}</li>
			</ul>
		</div>
    </div>
</template>

<script>
export default {
    name: 'SearchList',
    props:{
        searchResultList:{
            type:Array
        }
    },
    data() {
        return {
            
        };
    },
    methods:{
        
    },
};
</script>

<style lang="scss" scoped>
.searchList {
	width: 6.93rem;
	background-color: #FFFFFF;
	position: absolute;
	top: 6%;
	left: 49.5%;
	transform: translateX(-50%);
	z-index: 999;
}
.searchSpan {
    height: .75rem;
    font-size: .3125rem;
    line-height: .75rem;
    padding-left: .25rem;
}
</style>