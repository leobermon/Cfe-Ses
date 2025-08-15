<template>

    {{ getCurrentBluePrint(idSubestacion) }} 
    <component :is="currentComponent" :idSubestacion="idSubestacion" :nombreSub="nombreSub" />
    
</template>

<script>
import PlanoTin from '../components/planos/PlanoTIN.vue'

import PlanoPtp from '../components/planos/planoPTP.vue'
import PlanoNiz from '../components/planos/planoNIZ.vue'
import PlanoChy from '../components/planos/planoCHY.vue'

//planos de las casetas REI
import PlanoREI from '../components/planos/planoREI.vue'
import _ from 'lodash'


export default {
    components: { PlanoTin, PlanoNiz, PlanoPtp, PlanoChy, PlanoREI },
    props: ['idSubestacion', 'nombreSub'],
    data() {
        return {
            currentComponent:'',
            numeros: [ 364,367,366,369,368,372,371,370,378,377,375,373,365,374,376,379,380] //estas son los id de las casetas REI
        }
    },
    methods: {
        getCurrentBluePrint(test) {
            console.log('llego con ' + test);
            

            let nuevoPlano =  _.includes(this.numeros, parseInt(test)) ? 9 : test;

            console.log('nuevo plano ' + nuevoPlano);

            switch (parseInt(nuevoPlano)) { 
                case 1:
                    this.currentComponent = 'PlanoNiz';
                    break;
                case 2:
                    this.currentComponent = 'PlanoTin';
                    break;
                case 8:
                    this.currentComponent = 'PlanoPtp';
                    break;
                case 9:
                    this.currentComponent = 'PlanoREI';
                    break;
                case 10:
                    this.currentComponent = 'PlanoChy';
                    break;

                default:
                    break;
            }
        }
    }
}

</script>