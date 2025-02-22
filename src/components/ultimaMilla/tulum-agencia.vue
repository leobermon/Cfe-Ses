<template>
    <p class="mb-3 text-center text-gray-500 hidden md:block ">

    <h2 class=" text-4xl font-bold "> ULTIMA MILLA S.E. TULUM --> AGENCIA TULUM </h2>

    </p>

    <center>

        <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" :style="estilosMapa" :center="center" :zoom="14"
            :min-zoom="9" :max-zoom="20" :restriction="restriction" :styles="estilosMapa">

            <Polyline :options="VadBlm" />

            <MarkerCluster>
            <template v-for="a in subestaciones">

                <Marker :options="{ position: a, icon: icon }">

                    <InfoWindow v-if="a.equipos && a.equipos.length > 0">
                        <div id="content"
                            :class="[(equipo.idEquipo > 0) ? 'place-content-center bg-slate-200 mt-4 cursor-pointer' : 'place-content-center bg-slate-200 mt-4']"
                            @click="VerEquipo(equipo.idEquipo)" v-for="equipo in a.equipos">
                            <h2 id="firstHeading" class="firstHeading text-xl font-bold text-center border-2 border-black ">
                                {{
                                    equipo.nombre }}
                            </h2>
                      
                        </div>
                    </InfoWindow>

                </Marker>

                <CustomMarker :options="{ position: a, anchorPoint: 'RIGTH_TOP' }"
                class="bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">
                    <div style="text-align: center; ">
                        <div style="font-size: 1.125rem" class="font-bold">  {{ a.torre }} </div>
                    </div>
                </CustomMarker>

            </template>

        </MarkerCluster>

        </GoogleMap>
    </center>
</template>
  
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker, MarkerCluster } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/poste.svg'

export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker , MarkerCluster},
    data() {
        return {
            center: { lat: 20.2318673, lng: -87.4711861 },
            subestaciones: [
     
                { torre: 1, lng: -87.47112004, lat: 20.25904345 },
                        { torre: 2, lng: -87.47098194, lat: 20.25916199 },
                        { torre: 3, lng: -87.47094409, lat: 20.25915698 },
                        { torre: 4, lng: -87.47048875, lat: 20.25941626 },
                        { torre: 5, lng: -87.470034, lat: 20.258967 },
                        { torre: 6, lng: -87.469564, lat: 20.258502 },
                        { torre: 7, lng: -87.469165, lat: 20.258119 },
                        { torre: 8, lng: -87.468885, lat: 20.257695 },
                        { torre: 9, lng: -87.468705, lat: 20.257268 },
                        { torre: 10, lng: -87.468476, lat: 20.256808 },
                        { torre: 11, lng: -87.468253, lat: 20.256119 },
                        { torre: 12, lng: -87.468053, lat: 20.255617 },
                        { torre: 13, lng: -87.46784773, lat: 20.25503414 },
                        { torre: 14, lng: -87.46762852, lat: 20.25441548 },
                        { torre: 15, lng: -87.46736272, lat: 20.25367508 },
                        { torre: 16, lng: -87.46718745, lat: 20.25317419 },
                        { torre: 17, lng: -87.466975, lat: 20.252585 },
                        { torre: 18, lng: -87.466762, lat: 20.251972 },
                        { torre: 19, lng: -87.46646675, lat: 20.25115143 },
                        { torre: 20, lng: -87.4663426, lat: 20.25080363 },
                        { torre: 21, lng: -87.466122, lat: 20.250204 },
                        { torre: 22, lng: -87.4659015, lat: 20.24961728 },
                        { torre: 23, lng: -87.465661, lat: 20.248992 },
                        { torre: 24, lng: -87.465467, lat: 20.248427 },
                        { torre: 25, lng: -87.46529, lat: 20.247892 },
                        { torre: 26, lng: -87.465088, lat: 20.247216 },
                        { torre: 27, lng: -87.464787, lat: 20.246594 },
                        { torre: 28, lng: -87.464607, lat: 20.246016 },
                        { torre: 29, lng: -87.46440434, lat: 20.24541383 },
                        { torre: 30, lng: -87.46419148, lat: 20.24481078 },
                        { torre: 31, lng: -87.46394245, lat: 20.24414065 },
                        { torre: 32, lng: -87.46376719, lat: 20.24365233 },
                        { torre: 33, lng: -87.46356111, lat: 20.24306612 },
                        { torre: 34, lng: -87.46334185, lat: 20.24247023 },
                        { torre: 35, lng: -87.4630998, lat: 20.24178443 },
                        { torre: 36, lng: -87.46292184, lat: 20.24127873 },
                        { torre: 37, lng: -87.46274498, lat: 20.24078907 },
                        { torre: 38, lng: -87.46249048, lat: 20.24007643 },
                        { torre: 39, lng: -87.46226041, lat: 20.23943648 },
                        { torre: 40, lng: -87.462049, lat: 20.238849 },
                        { torre: 41, lng: -87.461848, lat: 20.238233 },
                        { torre: 42, lng: -87.46164264, lat: 20.23764947 },
                        { torre: 43, lng: -87.46142816, lat: 20.23705951 },
                        { torre: 44, lng: -87.46121316, lat: 20.23646112 },
                        { torre: 45, lng: -87.46103264, lat: 20.23595388 },
                        { torre: 46, lng: -87.46078799, lat: 20.23528716 },
                        { torre: 47, lng: -87.460546, lat: 20.234661 },
                        { torre: 48, lng: -87.460349, lat: 20.234083 },
                        { torre: 49, lng: -87.460116, lat: 20.233482 },
                        { torre: 50, lng: -87.45989914, lat: 20.23285114 },
                        { torre: 51, lng: -87.4596833, lat: 20.23223962 },
                        { torre: 52, lng: -87.4594871, lat: 20.23167653 },
                        { torre: 53, lng: -87.459268, lat: 20.23106 },
                        { torre: 54, lng: -87.459031, lat: 20.230493 },
                        { torre: 55, lng: -87.458818, lat: 20.22987 },
                        { torre: 56, lng: -87.458598, lat: 20.229298 },
                        { torre: 57, lng: -87.458397, lat: 20.228731 },
                        { torre: 58, lng: -87.45818241, lat: 20.22811454 },
                        { torre: 59, lng: -87.45796448, lat: 20.22749769 },
                        { torre: 60, lng: -87.45776642, lat: 20.22694684 },
                        { torre: 61, lng: -87.45749298, lat: 20.22618674 },
                        { torre: 62, lng: -87.45731921, lat: 20.2257017 },
                        { torre: 63, lng: -87.457095, lat: 20.225075 },
                        { torre: 64, lng: -87.45688806, lat: 20.22451587 },
                        { torre: 65, lng: -87.45666167, lat: 20.22390591 },
                        { torre: 66, lng: -87.456444, lat: 20.223324 },
                        { torre: 67, lng: -87.456228, lat: 20.222755 },
                        { torre: 68, lng: -87.456018, lat: 20.222106 },
                        { torre: 69, lng: -87.45581362, lat: 20.22151393 },
                        { torre: 70, lng: -87.455597, lat: 20.220909 },
                        { torre: 71, lng: -87.455367, lat: 20.220363 },
                        { torre: 72, lng: -87.455241, lat: 20.219971 },
                        { torre: 73, lng: -87.455136, lat: 20.219715 },
                        { torre: 74, lng: -87.455092, lat: 20.219518 },
                        { torre: 75, lng: -87.455038, lat: 20.219401 },
                        { torre: 76, lng: -87.454916, lat: 20.219096 },
                        { torre: 77, lng: -87.455486, lat: 20.218899 },
                        { torre: 78, lng: -87.455784, lat: 20.218793 },
                        { torre: 79, lng: -87.456213, lat: 20.218663 },
                        { torre: 80, lng: -87.456653, lat: 20.218525 },
                        { torre: 81, lng: -87.457106, lat: 20.218382 },
                        { torre: 82, lng: -87.457576, lat: 20.218203 },
                        { torre: 83, lng: -87.458024, lat: 20.218046 },
                        { torre: 84, lng: -87.45847, lat: 20.217896 },
                        { torre: 85, lng: -87.458915, lat: 20.21776 },
                        { torre: 86, lng: -87.459365, lat: 20.217629 },
                        { torre: 87, lng: -87.459806, lat: 20.217492 },
                        { torre: 88, lng: -87.4603, lat: 20.217321 },
                        { torre: 89, lng: -87.460146, lat: 20.217104 },
                        { torre: 90, lng: -87.459979, lat: 20.216665 },
                        { torre: 91, lng: -87.459842, lat: 20.216226 },
                        { torre: 92, lng: -87.459641, lat: 20.215806 },
                        { torre: 93, lng: -87.459486, lat: 20.215348 },
                        { torre: 94, lng: -87.459284, lat: 20.21483 },
                        { torre: 95, lng: -87.459207, lat: 20.214524 },
                        { torre: 96, lng: -87.459063, lat: 20.214203 },
                        { torre: 97, lng: -87.458996, lat: 20.213924 },
                        { torre: 98, lng: -87.458849, lat: 20.213603 },
                        { torre: 99, lng: -87.458777, lat: 20.213326 },
                        { torre: 100, lng: -87.45896, lat: 20.213232 },
                        { torre: 101, lng: -87.459291, lat: 20.213143 },
                        { torre: 102, lng: -87.459462, lat: 20.213107 },
                        { torre: 103, lng: -87.459584, lat: 20.212998 }
            ],
            VadBlm: {
                path: [
                    
                        { torre: 1, lng: -87.47112004, lat: 20.25904345 },
                        { torre: 2, lng: -87.47098194, lat: 20.25916199 },
                        { torre: 3, lng: -87.47094409, lat: 20.25915698 },
                        { torre: 4, lng: -87.47048875, lat: 20.25941626 },
                        { torre: 5, lng: -87.470034, lat: 20.258967 },
                        { torre: 6, lng: -87.469564, lat: 20.258502 },
                        { torre: 7, lng: -87.469165, lat: 20.258119 },
                        { torre: 8, lng: -87.468885, lat: 20.257695 },
                        { torre: 9, lng: -87.468705, lat: 20.257268 },
                        { torre: 10, lng: -87.468476, lat: 20.256808 },
                        { torre: 11, lng: -87.468253, lat: 20.256119 },
                        { torre: 12, lng: -87.468053, lat: 20.255617 },
                        { torre: 13, lng: -87.46784773, lat: 20.25503414 },
                        { torre: 14, lng: -87.46762852, lat: 20.25441548 },
                        { torre: 15, lng: -87.46736272, lat: 20.25367508 },
                        { torre: 16, lng: -87.46718745, lat: 20.25317419 },
                        { torre: 17, lng: -87.466975, lat: 20.252585 },
                        { torre: 18, lng: -87.466762, lat: 20.251972 },
                        { torre: 19, lng: -87.46646675, lat: 20.25115143 },
                        { torre: 20, lng: -87.4663426, lat: 20.25080363 },
                        { torre: 21, lng: -87.466122, lat: 20.250204 },
                        { torre: 22, lng: -87.4659015, lat: 20.24961728 },
                        { torre: 23, lng: -87.465661, lat: 20.248992 },
                        { torre: 24, lng: -87.465467, lat: 20.248427 },
                        { torre: 25, lng: -87.46529, lat: 20.247892 },
                        { torre: 26, lng: -87.465088, lat: 20.247216 },
                        { torre: 27, lng: -87.464787, lat: 20.246594 },
                        { torre: 28, lng: -87.464607, lat: 20.246016 },
                        { torre: 29, lng: -87.46440434, lat: 20.24541383 },
                        { torre: 30, lng: -87.46419148, lat: 20.24481078 },
                        { torre: 31, lng: -87.46394245, lat: 20.24414065 },
                        { torre: 32, lng: -87.46376719, lat: 20.24365233 },
                        { torre: 33, lng: -87.46356111, lat: 20.24306612 },
                        { torre: 34, lng: -87.46334185, lat: 20.24247023 },
                        { torre: 35, lng: -87.4630998, lat: 20.24178443 },
                        { torre: 36, lng: -87.46292184, lat: 20.24127873 },
                        { torre: 37, lng: -87.46274498, lat: 20.24078907 },
                        { torre: 38, lng: -87.46249048, lat: 20.24007643 },
                        { torre: 39, lng: -87.46226041, lat: 20.23943648 },
                        { torre: 40, lng: -87.462049, lat: 20.238849 },
                        { torre: 41, lng: -87.461848, lat: 20.238233 },
                        { torre: 42, lng: -87.46164264, lat: 20.23764947 },
                        { torre: 43, lng: -87.46142816, lat: 20.23705951 },
                        { torre: 44, lng: -87.46121316, lat: 20.23646112 },
                        { torre: 45, lng: -87.46103264, lat: 20.23595388 },
                        { torre: 46, lng: -87.46078799, lat: 20.23528716 },
                        { torre: 47, lng: -87.460546, lat: 20.234661 },
                        { torre: 48, lng: -87.460349, lat: 20.234083 },
                        { torre: 49, lng: -87.460116, lat: 20.233482 },
                        { torre: 50, lng: -87.45989914, lat: 20.23285114 },
                        { torre: 51, lng: -87.4596833, lat: 20.23223962 },
                        { torre: 52, lng: -87.4594871, lat: 20.23167653 },
                        { torre: 53, lng: -87.459268, lat: 20.23106 },
                        { torre: 54, lng: -87.459031, lat: 20.230493 },
                        { torre: 55, lng: -87.458818, lat: 20.22987 },
                        { torre: 56, lng: -87.458598, lat: 20.229298 },
                        { torre: 57, lng: -87.458397, lat: 20.228731 },
                        { torre: 58, lng: -87.45818241, lat: 20.22811454 },
                        { torre: 59, lng: -87.45796448, lat: 20.22749769 },
                        { torre: 60, lng: -87.45776642, lat: 20.22694684 },
                        { torre: 61, lng: -87.45749298, lat: 20.22618674 },
                        { torre: 62, lng: -87.45731921, lat: 20.2257017 },
                        { torre: 63, lng: -87.457095, lat: 20.225075 },
                        { torre: 64, lng: -87.45688806, lat: 20.22451587 },
                        { torre: 65, lng: -87.45666167, lat: 20.22390591 },
                        { torre: 66, lng: -87.456444, lat: 20.223324 },
                        { torre: 67, lng: -87.456228, lat: 20.222755 },
                        { torre: 68, lng: -87.456018, lat: 20.222106 },
                        { torre: 69, lng: -87.45581362, lat: 20.22151393 },
                        { torre: 70, lng: -87.455597, lat: 20.220909 },
                        { torre: 71, lng: -87.455367, lat: 20.220363 },
                        { torre: 72, lng: -87.455241, lat: 20.219971 },
                        { torre: 73, lng: -87.455136, lat: 20.219715 },
                        { torre: 74, lng: -87.455092, lat: 20.219518 },
                        { torre: 75, lng: -87.455038, lat: 20.219401 },
                        { torre: 76, lng: -87.454916, lat: 20.219096 },
                        { torre: 77, lng: -87.455486, lat: 20.218899 },
                        { torre: 78, lng: -87.455784, lat: 20.218793 },
                        { torre: 79, lng: -87.456213, lat: 20.218663 },
                        { torre: 80, lng: -87.456653, lat: 20.218525 },
                        { torre: 81, lng: -87.457106, lat: 20.218382 },
                        { torre: 82, lng: -87.457576, lat: 20.218203 },
                        { torre: 83, lng: -87.458024, lat: 20.218046 },
                        { torre: 84, lng: -87.45847, lat: 20.217896 },
                        { torre: 85, lng: -87.458915, lat: 20.21776 },
                        { torre: 86, lng: -87.459365, lat: 20.217629 },
                        { torre: 87, lng: -87.459806, lat: 20.217492 },
                        { torre: 88, lng: -87.4603, lat: 20.217321 },
                        { torre: 89, lng: -87.460146, lat: 20.217104 },
                        { torre: 90, lng: -87.459979, lat: 20.216665 },
                        { torre: 91, lng: -87.459842, lat: 20.216226 },
                        { torre: 92, lng: -87.459641, lat: 20.215806 },
                        { torre: 93, lng: -87.459486, lat: 20.215348 },
                        { torre: 94, lng: -87.459284, lat: 20.21483 },
                        { torre: 95, lng: -87.459207, lat: 20.214524 },
                        { torre: 96, lng: -87.459063, lat: 20.214203 },
                        { torre: 97, lng: -87.458996, lat: 20.213924 },
                        { torre: 98, lng: -87.458849, lat: 20.213603 },
                        { torre: 99, lng: -87.458777, lat: 20.213326 },
                        { torre: 100, lng: -87.45896, lat: 20.213232 },
                        { torre: 101, lng: -87.459291, lat: 20.213143 },
                        { torre: 102, lng: -87.459462, lat: 20.213107 },
                        { torre: 103, lng: -87.459584, lat: 20.212998 }


                ],
                geodesic: true,
                strokeColor: "#0314fc",
                strokeOpacity: 1,
                strokeWeight: 3
            },
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
                    featureType: "transit",
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
                }
            ]
        }
    },
    methods: {
        VerEquipo(idEquipo) {
            if (idEquipo > 0) {
                console.log('se presiona el boton');
                window.location.href = "http://192.168.1.78:5173/rack/" + idEquipo;
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

