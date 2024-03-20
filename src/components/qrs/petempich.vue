<template>
    <div class="hello">
        <h1>
        PETEMPICH
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
                        <qrcode-vue :value="'http://10.28.76.118:8080/plano/8'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">S.E. PTP</h5>
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
                { idGabinete: 288, tipo: 'cargadores', nombre: "D15	" },
                { idGabinete: 287, tipo: 'cargadores', nombre: "D14	" },
                { idGabinete: 286, tipo: 'cargadores', nombre: "D13	" },
                { idGabinete: 285, tipo: 'cargadores', nombre: "D12	" },
                { idGabinete: 284, tipo: 'cargadores', nombre: "D3	" },
                { idGabinete: 283, tipo: 'cargadores', nombre: "D2	" },
                { idGabinete: 282, tipo: 'cargadores', nombre: "D1	" },
                { idGabinete: 281, tipo: 'interruptores', nombre: "C14	" },
                { idGabinete: 280, tipo: 'interruptores', nombre: "C13	" },
                { idGabinete: 279, tipo: 'interruptores', nombre: "C12	" },
                { idGabinete: 278, tipo: 'interruptores', nombre: "C8	" },
                { idGabinete: 277, tipo: 'interruptores', nombre: "C7	" },
                { idGabinete: 276, tipo: 'interruptores', nombre: "C6	" },
                { idGabinete: 275, tipo: 'interruptores', nombre: "C3	" },
                { idGabinete: 274, tipo: 'interruptores', nombre: "C2	" },
                { idGabinete: 273, tipo: 'interruptores', nombre: "C1	" },
                { idGabinete: 272, tipo: 'rack', nombre: "B13	" },
                { idGabinete: 271, tipo: 'rack', nombre: "B12	" },
                { idGabinete: 270, tipo: 'rack', nombre: "B11	" },
                { idGabinete: 269, tipo: 'rack', nombre: "B10	" },
                { idGabinete: 268, tipo: 'rack', nombre: "B9	" },
                { idGabinete: 267, tipo: 'rack', nombre: "B4	" },
                { idGabinete: 266, tipo: 'rack', nombre: "B3	" },
                { idGabinete: 265, tipo: 'rack', nombre: "B2	" },
                { idGabinete: 264, tipo: 'rack', nombre: "B1	" },
                { idGabinete: 263, tipo: 'rack', nombre: "A10	" },
                { idGabinete: 262, tipo: 'rack', nombre: "A9	" },
                { idGabinete: 261, tipo: 'rack', nombre: "A8	" },
                { idGabinete: 260, tipo: 'rack', nombre: "A5	" },
                { idGabinete: 259, tipo: 'rack', nombre: "A4	" },
                { idGabinete: 258, tipo: 'rack', nombre: "A3	" },
                { idGabinete: 257, tipo: 'rack', nombre: "A2	" },
                { idGabinete: 256, tipo: 'rack', nombre: "A1	" },


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
  