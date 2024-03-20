<template>
    <div class="hello">
        <h1>
        NIZUC
        </h1>

        <h1> G A B I N E T E S </h1>
        <div class="container">
            <h1>{{ nombre }}</h1>


            <div class="grid grid-cols-3 gap-3 text-center">
                <div v-for="(device, index) in subestacion" :key="index" class="">


                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="('http://10.28.76.118:8080/' + device.tipo + '/' + device.idGabinete)"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">{{ device.nombre }}</h5>
                        </div>
                    </div>
                    <br>
                </div>

            </div> 



        </div>

        <h1> G A B I N E T E S </h1>
        <div class="container">
            <h1>{{ nombre }}</h1>


            <div class="grid grid-cols-3 gap-3 text-center">
                <div v-for="(device, index) in subestacion" :key="index" class="">
                    <div class="border-solid border-4 py-6 border-black rounded-lg ">
                        
                        <div class="card-body" style=" padding: 0rem !important;">
                            <h5 class="text-[120px] font-bold">{{ device.nombre }}</h5>
                        </div>
                    </div>
                    <br>
                </div>

            </div>



        </div>

        <h1> PAGINAS </h1>
        <div class="container">


            <div class="grid grid-cols-3 gap-3 text-center">


                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="'http://10.28.76.118:8080/directorio'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">Directorio</h5>
                        </div>
                    </div>

                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="'http://10.28.76.118:8080/plano/1'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">S.E. NIZ</h5>
                        </div>
                    </div>
                    

                 
               

            </div>



        </div>




    </div>
</template>
   
<script>

import QrcodeVue from 'qrcode.vue'


export default {
    name: 'HelloWorld',
    props: {
        msg: String

    },
    data() {
        return {
            value: 'https://example.com',
            size: 215,
            nombre: 'PTP',
            subestacion: [
                // { idGabinete: 288, tipo: 'cargadores', nombre: "D15	" },
                // { idGabinete: 287, tipo: 'cargadores', nombre: "D14	" },
                // { idGabinete: 286, tipo: 'cargadores', nombre: "D13	" },
                // { idGabinete: 285, tipo: 'cargadores', nombre: "D12	" },
                // { idGabinete: 284, tipo: 'cargadores', nombre: "D3	" },
                // { idGabinete: 283, tipo: 'cargadores', nombre: "D2	" },
                // { idGabinete: 282, tipo: 'cargadores', nombre: "D1	" },
                // { idGabinete: 281, tipo: 'interruptores', nombre: "C14	" },
                // { idGabinete: 280, tipo: 'interruptores', nombre: "C13	" },
                // { idGabinete: 279, tipo: 'interruptores', nombre: "C12	" },
                // { idGabinete: 278, tipo: 'interruptores', nombre: "C8	" },
                // { idGabinete: 277, tipo: 'interruptores', nombre: "C7	" },
                // { idGabinete: 276, tipo: 'interruptores', nombre: "C6	" },
                // { idGabinete: 275, tipo: 'interruptores', nombre: "C3	" },
                // { idGabinete: 274, tipo: 'interruptores', nombre: "C2	" },
                // { idGabinete: 273, tipo: 'interruptores', nombre: "C1	" },
                { idGabinete: 1, tipo: 'rack', nombre: "A1	" },
                { idGabinete: 2, tipo: 'rack', nombre: "A2	" },
                { idGabinete: 3, tipo: 'rack', nombre: "A3	" },
                { idGabinete: 4, tipo: 'rack', nombre: "A4	" },
                { idGabinete: 5, tipo: 'rack', nombre: "A5	" },
                { idGabinete: 255, tipo: 'rack', nombre: "A6	" },
                { idGabinete: 7, tipo: 'rack', nombre: "A7	" },
                { idGabinete: 296, tipo: 'rack', nombre: "A8	" },
                { idGabinete: 338, tipo: 'rack', nombre: "A9	" },
                { idGabinete: 34, tipo: 'rack', nombre: "B1	" },
                { idGabinete: 35, tipo: 'rack', nombre: "B2	" },
                { idGabinete: 36, tipo: 'rack', nombre: "B3	" },
                { idGabinete: 37, tipo: 'rack', nombre: "B4	" },
                { idGabinete: 38, tipo: 'rack', nombre: "B5	" },
                { idGabinete: 39, tipo: 'rack', nombre: "B6	" },
                { idGabinete: 294, tipo: 'rack', nombre: "B7	" },
                { idGabinete: 295, tipo: 'rack', nombre: "B8	" },
                { idGabinete: 42, tipo: 'rack', nombre: "B9	" },
                { idGabinete: 297, tipo: 'rack', nombre: "B10	" },
                { idGabinete: 44, tipo: 'rack', nombre: "B11	" },
                { idGabinete: 293, tipo: 'rack', nombre: "D14	" },
                { idGabinete: 292, tipo: 'rack', nombre: "D15	" },
                


            ],
          
        }
    },
    methods: {
   

    },
    components: {
        QrcodeVue,
    },
}
</script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.own {
    border: solid black 5px;
    border-radius: 10px;
    width: 260px;

}

.text-on-card {
    color: white;
    font-size: 45px;
    font-weight: bold;
}

.card-title {
    margin-bottom: 0 !important;
    margin-top: .5rem !important;
}
</style>
  