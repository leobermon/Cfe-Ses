import { defineStore } from 'pinia'

export const useTaskStore = defineStore('taskStore', {
    state: () => ({
        subestaciones: [],
        instalaciones: [],
        currentSubestacion: [],
        currentInstalaciones: [],
        equiposGabinete: [],
        currentRack: 0,
        dbConnection: true,
        ipAddress: "http://192.168.1.69:5000",
        ipLocalServ:"http://192.168.1.69:5173",
        gabineteFiles: ""
    }),
    getters: {
        // favCount(){
        //     return this.task.reduce((p,c) => {
        //         return c.isFav ? p + 1 : p ;
        //     }, 0 )
        // },
        // //we cant use "this." In arrow functions handle 
        // //we have to use state inside parenthesis 
        // totalCount: (state) => {
        //     return state.task.length;
        // }
    },
    actions: {
        async getSubestaciones() {
            try {
                const res = await fetch(this.ipAddress + '/subestaciones')
                const data = await res.json()
                this.subestaciones = data

            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getInstalaciones() {
            try {
                const res2 = await fetch(this.ipAddress + '/instalaciones')
                const data2 = await res2.json()
                this.instalaciones = data2
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getEquipos() {
            try {
                const res3 = await fetch(this.ipAddress + '/equipos/' + this.currentRack)
                const data3 = await res3.json()
                this.equiposGabinete = data3
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getFilesGabinete() {
            try {
                const res4 = await fetch(this.ipAddress + '/gabinetes/' + this.currentRack)
                const data4 = await res4.json()

                console.log('getFilesGabionte');
                console.log(data4);

                this.gabineteFiles = data4[0]
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        }
    }
})
