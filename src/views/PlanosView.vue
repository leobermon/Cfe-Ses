<template>

<component :is="currentComponent"/>


</template>

<script>
import PlanoTin from '../components/planos/PlanoTIN.vue'

export default {
    components: { PlanoTin },
    props: ['PlanoSe'],
    data() {
        return {
            currentComponent: PlanoTin
        }
    },
    methods: {
    }
}

</script>