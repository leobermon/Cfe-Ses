<template>

    <component :is="currentComponent"/>
    
    
    </template>
    
    <script>
    import UnifilarTin from '../components/RenderFile.vue'
    
    export default {
        
        props: ['PlanoSe'],
        data() {
            return {
                currentComponent: UnifilarTin
            }
        },
        methods: {
        }
    }
    
    </script>