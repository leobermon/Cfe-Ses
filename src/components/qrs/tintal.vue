<template>
    <div class="hello">
        <h1>
        TINTAL
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
                        <qrcode-vue :value="'http://10.28.76.118:8080/plano/2'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">S.E. TIN</h5>
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

                { idGabinete: 100, tipo: 'rack', nombre: "A1 	" },
                { idGabinete: 101, tipo: 'rack', nombre: "A2 	" },
                { idGabinete: 102, tipo: 'rack', nombre: "A3 	" },
                { idGabinete: 103, tipo: 'rack', nombre: "A4 	" },
                { idGabinete: 104, tipo: 'rack', nombre: "A5 " },
                { idGabinete: 107, tipo: 'rack', nombre: "A8 " },
                { idGabinete: 108, tipo: 'rack', nombre: "A9 " },
                { idGabinete: 109, tipo: 'rack', nombre: "A10	" },
                { idGabinete: 111, tipo: 'rack', nombre: "B2 " },
                { idGabinete: 112, tipo: 'rack', nombre: "B3 " },
                { idGabinete: 113, tipo: 'rack', nombre: "B4 " },
                { idGabinete: 114, tipo: 'rack', nombre: "B5" },
                { idGabinete: 115, tipo: 'rack', nombre: "B6 " },
                { idGabinete: 116, tipo: 'rack', nombre: "B7 " },
                { idGabinete: 117, tipo: 'rack', nombre: "B8 " },
                { idGabinete: 120, tipo: 'rack', nombre: "B11 " },
                { idGabinete: 121, tipo: 'rack', nombre: "B12 " },
                { idGabinete: 122, tipo: 'rack', nombre: "B13 " },
                { idGabinete: 123, tipo: 'interruptores', nombre: "C1	" },
                { idGabinete: 124, tipo: 'interruptores', nombre: "C2	" },
                { idGabinete: 125, tipo: 'interruptores', nombre: "C3	" },
                { idGabinete: 126, tipo: 'interruptores', nombre: "C4	" },
                { idGabinete: 130, tipo: 'interruptores', nombre: "C8	" },
                { idGabinete: 131, tipo: 'interruptores', nombre: "C9	" },
                { idGabinete: 132, tipo: 'interruptores', nombre: "C10	" },
                { idGabinete: 134, tipo: 'interruptores', nombre: "C12	" },
                { idGabinete: 136, tipo: 'interruptores', nombre: "C14	" },
                { idGabinete: 137, tipo: 'cargadores', nombre: "D1	" },
                { idGabinete: 138, tipo: 'cargadores', nombre: "D2	" },
                { idGabinete: 139, tipo: 'cargadores', nombre: "D3	" },
                { idGabinete: 142, tipo: 'cargadores', nombre: "D12	" },
                { idGabinete: 143, tipo: 'cargadores', nombre: "D13	" },
                { idGabinete: 144, tipo: 'cargadores', nombre: "D14	" },
                { idGabinete: 145, tipo: 'cargadores', nombre: "D15	" },
            

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
  