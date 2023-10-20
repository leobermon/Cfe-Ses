<template>

    {{ getCurrentBluePrint(idSubestacion) }} 
    <component :is="currentComponent" />
    
</template>

<script>
import PlanoTin from '../components/planos/PlanoTIN.vue'
import PlanoNiz from '../components/planos/planoNIZ.vue'
import PlanoPtp from '../components/planos/planoPTP.vue'

export default {
    components: { PlanoTin,PlanoNiz, PlanoPtp },
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
                    console.log('llego al switch 1');
                    this.currentComponent = 'PlanoNiz';
                    break;
                case 2:
                console.log('llego al switch 2');
                    this.currentComponent = 'PlanoTin';
                    break;
                case 8:
                console.log('llego al switch 2');
                    this.currentComponent = 'PlanoPtp';
                    break;

                default:
                    break;
            }
        }
    }
}

</script>