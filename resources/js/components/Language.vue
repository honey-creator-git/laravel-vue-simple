
<template>
    <div id="main-container">
        <div id="sub-container">
            <div id="thumb-top">
                <div id="thumb_up">
                    <img src="../assets/thumb_up.png" alt="thumb_up">
                    <span>{{ thumb_up }} / {{ total }}</span>
                </div>
                <div id="thumb_down">
                    <img src="../assets/thumb_down.png" alt="thumb_up">
                    <span>{{ thumb_down }} / {{ total }}</span>
                </div>
            </div>
            <img :src="image_url" style="width: 100%; border-radius: 10px;" alt="no image" />
            <p id="english">{{ tar_description }}</p>
            <input type="text" @keyup.enter="confirm(description)" v-model="description">
            <button v-on:click="confirm(description)"><span>Let's see</span></button>
            <div id="thumb">
                <div id="thumb_up">
                    <img src="../assets/thumb_up.png" alt="thumb_up">
                    <span>{{ thumb_up }} / {{ total }}</span>
                </div>
                <div id="thumb_down">
                    <img src="../assets/thumb_down.png" alt="thumb_up">
                    <span>{{ thumb_down }} / {{ total }}</span>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import {serverUrl} from 'env'
export default {
    name: 'HelloWorld',
    data() {
        return {
            ori_description: '',
            description: '',
            tar_description: '',
            image_url: '',
            thumb_up: 0,
            thumb_down: 0,
            total: 0,
            datas: [],
            order: []
        }
    },
    created() {
        this.axios
            .get(`http://127.0.0.1:8000/api/language`)
            .then(response => {
                this.datas = response.data;
                while (this.order.length < this.datas.length) {
                    var r = Math.floor(Math.random() * 12);
                    if (this.order.indexOf(r) === -1) this.order.push(r);
                }
                this.ori_description = this.datas[this.order[0]].en_description;
                this.tar_description = this.datas[this.order[0]].se_description;
                this.image_url = this.datas[this.order[0]].image_url;

            });
    },
    methods: {
        confirm(description) {
            if (this.thumb_up < (this.datas.length - 1)) {
                if (this.ori_description.toLowerCase() == description.toLowerCase()) {
                    this.thumb_up += 1;


                    this.ori_description = this.datas[this.order[this.thumb_up]].en_description;
                    this.tar_description = this.datas[this.order[this.thumb_up]].se_description;
                    this.image_url = this.datas[this.order[this.thumb_up]].image_url;
                    this.description = '';
                    this.total += 1;


                } else {
                    this.thumb_down += 1;
                    this.total += 1;
                    this.description = '';
                }

            } else {
                this.order = [];
                while (this.order.length < this.datas.length) {
                    var r = Math.floor(Math.random() * 12);
                    if (this.order.indexOf(r) === -1) this.order.push(r);
                }
                this.ori_description = this.datas[this.order[0]].en_description;
                this.tar_description = this.datas[this.order[0]].se_description;
                this.image_url = this.datas[this.order[0]].image_url;

                this.description = '';

                this.thumb_down = 0;
                this.thumb_up = 0;
                this.total = 0;
            }
        },
    },
}
</script>


  <!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#main-container {
    border-radius: 10px;
    background-color: white;
    width: 100%;
    max-width: 1280px;
    margin-top: 50px;
    margin-left: auto;
    margin-right: auto;

}

#sub-container {
    position: relative;
    padding: 25px;
    max-width: 700px;
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    text-align: center;

}

p {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 600;
    font-size: 24px;
    line-height: 28px;
}

#english {
    margin-top: 25px;
}

input {
    width: 100%;
    height: 50px;
    font-size: 30px;
    border: 1px solid azure;
    border-radius: 10px;
    box-shadow: -6px 6px 10px rgba(255, 103, 0, 0.3), 6px -6px 10px rgba(231, 190, 163, 0.3);
    text-align: center;
}

input:focus-visible {
    outline: none;
}

button {
    margin-top: 50px;
    width: 324px;
    height: 60px;
    left: 798px;
    top: 839px;

    background: #FF6700;
    border: #FF6700;
    border-radius: 10px;
    cursor: pointer;
}

button:hover {
    box-shadow: -6px 6px 10px rgba(255, 103, 0, 0.3), 6px -6px 10px rgba(231, 190, 163, 0.3);
}

span {
    color: azure;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 900;
    font-size: 24px;
    line-height: 28px;
}

#thumb, #thumb-top {
    margin-top: 25px;
    display: flex;
    justify-content: space-around;

}

#thumb_up {
    display: flex;
    align-items: center;
    gap: 10px;
}

#thumb_up>span {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 300;
    font-size: 30px;
    line-height: 23px;

    color: #FF6700;
}

#thumb_down {
    display: flex;
    align-items: center;
    gap: 10px;
}

#thumb_down>span {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 300;
    font-size: 30px;
    line-height: 23px;

    color: #FF6700;
}

@media screen and (max-width: 400px) {
    button {
        width: 70%;
    }

    #main-container {
        border-radius: 30px;
        font-size: 16px;
        margin-top: 16px;
    }

    #sub-container>p,
    input {
        font-size: 16px;
    }

    button {
        height: 40px;
    }

    button>span {
        font-size: 16px;
    }


    #thumb {
        display: none;

    }

    #thumb-top {
        margin-top: 10px;
        margin-bottom: 10px;
        display: flex;
        justify-content: space-between;
    }
    #thumb-top> div> img {
        width: 20px;
        height: 20px;
    }

    #thumb-top>div>span {
        font-size: 16px;
    }
}
@media screen and (min-width: 400px) {
    #thumb-top {
        display: none;
    }
}
</style>
