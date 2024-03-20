<template>

    {{ getCurrentBluePrint(idSubestacion) }} 
    <component :is="currentComponent" />
    
</template>

<script>
import PlanoTin from '../components/planos/PlanoTIN.vue'

import PlanoPtp from '../components/planos/planoPTP.vue'
import PlanoNiz from '../components/planos/planoNIZ.vue'
import PlanoChy from '../components/planos/planoCHY.vue'

export default {
    components: { PlanoTin, PlanoNiz, PlanoPtp, PlanoChy },
    props: ['idSubestacion'],
    data() {
        return {
            currentComponent:''
        }
    },
    methods: {
        getCurrentBluePrint(test) {
            console.log('llego con ' + test);
            switch (parseInt(test)) { 
                case 1:
                    this.currentComponent = 'PlanoNiz';
                    break;
                case 2:
                    this.currentComponent = 'PlanoTin';
                    break;
                case 8:
                    this.currentComponent = 'PlanoPtp';
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