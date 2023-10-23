<template>
    <!-- <img v-if="hasImg" :src="logo"  @error="imgUrlAlt"> -->
    <!-- <img v-else :src="photo1"  @error="imgUrlAlt"> -->
    
    <img v-if="hasImg" v-lazy="logo" />
    <img v-else v-lazy="photo1" />

</template>
  
<script setup>
import { ref, watchEffect } from 'vue'
import photo1 from '@/assets/img/ModeloEquipo/0.png'

const props = defineProps({
    imdId: { type: String },
    hasImg: { type: Number},
    typeImg: { type: Number}
})

const logo = ref()
watchEffect(async () => {
    try {
        if(props.hasImg ){
            logo.value = (await import(/* @vite-ignore */ `../assets/img/${props.typeImg}/${props.imdId}.png`)).default
        }    
    } catch (error) {
        logo.value = (await import(/* @vite-ignore */ `../assets/img/ModeloEquipo/0.png`)).default
    }
})

const imgUrlAlt = () => {
    console.log('como estas en las cualidades');
}

</script>