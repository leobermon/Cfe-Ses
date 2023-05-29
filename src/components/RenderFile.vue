<template>
    <img class="max-w-none" :src="photo1" >
</template>
   
<script setup>
import { ref, watchEffect } from 'vue'
import photo1 from '@/assets/diagramas/TIN.svg'

const props = defineProps({
    imdId: { type: String }
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
</script>