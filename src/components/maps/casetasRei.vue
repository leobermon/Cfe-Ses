<template>
    <p class="mb-3 text-center text-gray-500 ">
    <h2 class="text-4xl font-bold">CASETAS REI </h2>
    </p>

    <div class="place-content-center justify-center ">

        <center>
            <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" class="place-content-center justify-center"
                :style="estilosMapa" :center="center" :zoom="10" :min-zoom="9" :max-zoom="16" :restriction="restriction"
                :styles="estilosMapa" :streetViewControl="false" :gestureHandling="greedy">



                <template v-for="a in subestaciones">

                    <Marker :options="{ position: a, icon: icon }" @click="test(a.idGabinete )">

                        <!-- <InfoWindow>
                        <div id="content" class="place-content-center bg-slate-200" style="cursor: pointer;">
                            <h2 id="firstHeading" class="text-xl font-bold text-center"> {{ a.nombre }}</h2>
                            <div id="bodyContent">
                                <p class="place-content-center">
                                    <img src="../../assets/img/imgMaps/OTN.svg" alt="" 
                                        style="cursor:pointer">
                                </p>
                            </div>
                        </div>

                        <br>
                    
                    </InfoWindow> -->
                    </Marker>

                    <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }"
                        class="bg-gray-100 rounded-lg p-0.5 border-double border-2 border-gray-400">
                        <div style="text-align: center">
                            <div style="font-size: 1.125rem" class="font-bold">S.E. {{ a.abrev }}</div>
                        </div>
                    </CustomMarker>
                </template>







            </GoogleMap>
        </center>

    </div>
</template>
      
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/casetarei.svg'
import MyNameClass from "../../stores/coordenadas.js";
import { useRouter } from 'vue-router';


export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker },
    data() {
        return {
            router: useRouter(),
            center: { lat: 20.8966297, lng: -87.489809 },
            subestaciones: [
                { lat: 21.159628, lng: -86.903089, abrev: 'YXE', idGabinete: 364, nombre: 'YAXCHE' }, //YAXCHE
                { lat: 21.234581, lng: -86.806072, abrev: 'PMU', idGabinete: 367, nombre: 'PLAYA MUJERES' }, //PLAYA MUJERES
                { lat: 21.174450, lng: -86.846358, abrev: 'PJU', idGabinete: 366, nombre: 'PUERTO JUAREZ' }, //PUERTO JUAREZ
                { lat: 21.134003, lng: -86.832106, abrev: 'CNC', idGabinete: 369, nombre: 'CANCUN' }, //CANCUN\
                { lat: 21.157907, lng: -86.819774, abrev: 'BNP', idGabinete: 368, nombre: 'BONAMPAK' }, //BONAMPAK
                { lat: 21.026729, lng: -86.822473, abrev: 'NIH', idGabinete: 372, nombre: 'NICTEHA' }, //NICTEHA
                { lat: 21.104596, lng: -86.764156, abrev: 'KAB', idGabinete: 371, nombre: 'KAB' }, //KABAH
                { lat: 21.143379, lng: -86.788737, abrev: 'NCT', idGabinete: 370, nombre: 'NICHUPTE' }, //NICHUPTE
                { lat: 20.454800, lng: -87.284204, abrev: 'AKD', idGabinete: 378, nombre: 'AKUMAL II' }, //AKUMAL DOS
                { lat: 20.508511, lng: -87.229072, abrev: 'AUC', idGabinete: 377, nombre: 'AKTUNCHEN' }, //AKTUNCHEN
                { lat: 20.667938, lng: -87.071287, abrev: 'ZNE', idGabinete: 375, nombre: 'ZACNICTE  ' }, //ZACNICTE
                { lat: 20.849499, lng: -86.903995, abrev: 'PMO', idGabinete: 373, nombre: 'PUERTO MORELOS  ' }, //PUERTO MORELOS
                { lat: 20.775939, lng: -86.965769, abrev: 'IXC', idGabinete: 365, nombre: 'IXCALACOCO  ' }, //IXCALACOCO
                { lat: 20.696387, lng: -87.032653, abrev: 'MYK', idGabinete: 374, nombre: 'MAYAKOBA  ' }, //MAYAKOBA
                { lat: 20.617917, lng: -87.093613, abrev: 'PLY', idGabinete: 376, nombre: 'PLAYACAR  ' }, //PLAYACAR
                { lat: 21.153952, lng: -86.839495, abrev: 'KUK', idGabinete: 379, nombre: 'KUKULKAN  ' }, //KUKULCAN
                { lat: 21.143571, lng: -86.871069, abrev: 'CEK', idGabinete: 380, nombre: 'CANEK  ' }, //CANEK
            ],
            restriction: {
                latLngBounds: {
                    north: 22,
                    south: 20,
                    east: -84,
                    west: -90,
                }
            },
            estilosMapa: [
                { "width": (window.innerWidth <= 768) ? "100%" : "80%" },
                { "height": (window.innerHeight - 180) + 'px' },
                {
                    "featureType": "poi.business",
                    "stylers": [{ "visibility": "off" }],
                },
                {
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
                },
                {
                    featureType: "transit",
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
                }
            ]


        }
    },
    methods: {
        test(idGabinete) {
            if (idGabinete > 0) {
                console.log('se presiona el boton');
                new MyNameClass('leonel', 'bermon')
                this.router.push('/plano/' + idGabinete)

            } else {
                console.log('no hay idEquipo');
            }

        }
    },
    computed: {
        icon() {
            return {
                url: photo1,
                scaledSize: { width: 27, height: 39 }
            };
        },
    }
}


</script>
    
    