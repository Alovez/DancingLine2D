// Learn cc.Class:
//  - [Chinese] https://docs.cocos.com/creator/manual/zh/scripting/class.html
//  - [English] http://docs.cocos2d-x.org/creator/manual/en/scripting/class.html
// Learn Attribute:
//  - [Chinese] https://docs.cocos.com/creator/manual/zh/scripting/reference/attributes.html
//  - [English] http://docs.cocos2d-x.org/creator/manual/en/scripting/reference/attributes.html
// Learn life-cycle callbacks:
//  - [Chinese] https://docs.cocos.com/creator/manual/zh/scripting/life-cycle-callbacks.html
//  - [English] https://www.cocos2d-x.org/docs/creator/manual/en/scripting/life-cycle-callbacks.html

cc.Class({
    extends: cc.Component,

    properties: {
        audioSource: {
            type: cc.AudioSource,
            default: null
        },
        player: {
            default: null,
            type: cc.Sprite
        },
        tail_block: {
            default: null,
            type: cc.Prefab
        },
        grass: {
            default: null,
            type: cc.Prefab
        },
        path: {
            default: null,
            type: cc.Prefab
        },
        flower: {
            default: null,
            type: cc.Prefab
        },

    },

    // LIFE-CYCLE CALLBACKS:

    onLoad() {
        this.started = false;
        cc.systemEvent.on(cc.SystemEvent.EventType.KEY_DOWN, this.onKeyDown, this);
          
        this.current_tail = null;
        this.current_tail_start_x = 0;
        this.current_tail_start_y = 0;
        this.space_count = 0;

        var opern = [
            {
                Time: 0,
                x: 0,
                y: 0
            },
            {
                Time: 1.92,
                x: 0,
                y: 835
            },
            {
                Time: 2.570666666666667,
                x: 195,
                y: 835
            },
            {
                Time: 3.2906666666666666,
                x: 195,
                y: 1050
            },
            {
                Time: 4.1306666666666665,
                x: 450,
                y: 1050
            },
            {
                Time: 4.8293333333333335,
                x: 450,
                y: 1260
            },
            {
                Time: 5.549333333333333,
                x: 665,
                y: 1260
            },
            {
                Time: 6.370666666666667,
                x: 665,
                y: 1505
            },
            {
                Time: 7.149333333333333,
                x: 900,
                y: 1505
            },
            {
                Time: 8.509333333333334,
                x: 900,
                y: 1910
            },
            {
                Time: 9.989333333333333,
                x: 1345,
                y: 1910
            },
            {
                Time: 11.498666666666667,
                x: 1345,
                y: 2365
            },
            {
                Time: 12.96,
                x: 1780,
                y: 2365
            },
            {
                Time: 18.218666666666667,
                x: 1780,
                y: 3945
            },
            {
                Time: 19.149333333333335,
                x: 2060,
                y: 3945
            },
            {
                Time: 20.410666666666668,
                x: 2060,
                y: 4325
            },
            {
                Time: 21.96,
                x: 2520,
                y: 4325
            },
            {
                Time: 23.549333333333333,
                x: 2520,
                y: 4805
            },
            {
                Time: 25.018666666666668,
                x: 2960,
                y: 4805
            },
            {
                Time: 26.709333333333333,
                x: 2960,
                y: 5310
            },
            {
                Time: 27.36,
                x: 3155,
                y: 5310
            },
            {
                Time: 28.058666666666667,
                x: 3155,
                y: 5520
            },
            {
                Time: 28.749333333333333,
                x: 3365,
                y: 5520
            },
            {
                Time: 29.52,
                x: 3365,
                y: 5750
            },
            {
                Time: 30.21066666666667,
                x: 3570,
                y: 5750
            },
            {
                Time: 31.04,
                x: 3570,
                y: 6000
            },
            {
                Time: 31.818666666666665,
                x: 3805,
                y: 6000
            },
            {
                Time: 32.54933333333334,
                x: 3805,
                y: 6220
            },
            {
                Time: 33.349333333333334,
                x: 4045,
                y: 6220
            },
            {
                Time: 34.08,
                x: 4045,
                y: 6435
            },
            {
                Time: 34.84,
                x: 4275,
                y: 6435
            },
            {
                Time: 35.54933333333334,
                x: 4275,
                y: 6650
            },
            {
                Time: 36.330666666666666,
                x: 4505,
                y: 6650
            },
            {
                Time: 37.138666666666666,
                x: 4505,
                y: 6895
            },
            {
                Time: 38.74933333333333,
                x: 4990,
                y: 6895
            },
            {
                Time: 40.29866666666667,
                x: 4990,
                y: 7360
            },
            {
                Time: 41.72,
                x: 5415,
                y: 7360
            },
            {
                Time: 42.57866666666666,
                x: 5415,
                y: 7620
            },
            {
                Time: 43.54933333333334,
                x: 5705,
                y: 7620
            },
            {
                Time: 44.97866666666667,
                x: 5705,
                y: 8045
            },
            {
                Time: 46.41866666666667,
                x: 6140,
                y: 8045
            },
            {
                Time: 63.97866666666667,
                x: 6140,
                y: 13310
            },
            {
                Time: 64.58933333333333,
                x: 6325,
                y: 13310
            },
            {
                Time: 65.28,
                x: 6325,
                y: 13520
            },
            {
                Time: 66.13066666666667,
                x: 6575,
                y: 13520
            },
            {
                Time: 66.93066666666667,
                x: 6575,
                y: 13760
            },
            {
                Time: 67.64,
                x: 6790,
                y: 13760
            },
            {
                Time: 68.38933333333334,
                x: 6790,
                y: 13985
            },
            {
                Time: 69.18933333333334,
                x: 7030,
                y: 13985
            },
            {
                Time: 70.61866666666667,
                x: 7030,
                y: 14415
            },
            {
                Time: 72.09066666666666,
                x: 7470,
                y: 14415
            },
            {
                Time: 73.52,
                x: 7470,
                y: 14845
            },
            {
                Time: 75.05866666666667,
                x: 7930,
                y: 14845
            },
            {
                Time: 76.61066666666666,
                x: 7930,
                y: 15305
            },
            {
                Time: 78.06933333333333,
                x: 8370,
                y: 15305
            },
            {
                Time: 79.48,
                x: 8370,
                y: 15725
            },
            {
                Time: 80.94933333333333,
                x: 8815,
                y: 15725
            },
            {
                Time: 86.09866666666667,
                x: 8815,
                y: 17270
            },
            {
                Time: 88.69866666666667,
                x: 9595,
                y: 17270
            },
            {
                Time: 89.85066666666667,
                x: 9595,
                y: 17615
            },
            {
                Time: 91.48,
                x: 10080,
                y: 17615
            },
            {
                Time: 92.88,
                x: 10080,
                y: 18040
            },
            {
                Time: 94.41066666666667,
                x: 10535,
                y: 18040
            },
            {
                Time: 95.85866666666666,
                x: 10535,
                y: 18480
            },
            {
                Time: 97.45866666666667,
                x: 11010,
                y: 18480
            },
            {
                Time: 98.96,
                x: 11010,
                y: 18930
            },
            {
                Time: 100.30933333333333,
                x: 11410,
                y: 18930
            },
            {
                Time: 106.45066666666666,
                x: 11410,
                y: 20775
            },
            {
                Time: 107.97866666666667,
                x: 11865,
                y: 20775
            },
            {
                Time: 109.41066666666667,
                x: 11865,
                y: 21210
            },
            {
                Time: 110.21866666666666,
                x: 12105,
                y: 21210
            },
        ]
        var last_it = null;
        for (var i = 0; i < opern.length; i++){
            var it = opern[i];
            if (last_it){
                this.gen_grass(last_it, it);
                this.gen_path(last_it, it);
                if (it.Time > 44) {
                    this.gen_flower(last_it, it);
                }
            }
            last_it = it;
        }
    },

    start() {

    },

    gen_flower(last_it, it){
        var grass_num = Math.floor((it.Time - last_it.Time)) + 1
        for (var i = 0; i < grass_num; i++){
            var new_flower = cc.instantiate(this.flower);
            new_flower.parent = this.node;
            if (last_it.x == it.x){
                var new_x = last_it.x + Math.random()*100 + 80;
                var new_y = Math.random() * (it.y - last_it.y) + last_it.y;
                var time_scale = (new_y - last_it.y) / (it.y - last_it.y);
            }else{
                var new_y = last_it.y + Math.random()*100 + 80;
                var new_x = Math.random() * (it.x - last_it.x) + last_it.x;
                var time_scale = (new_x - last_it.x) / (it.x - last_it.x);
            }
            new_flower.setPosition(new_x, new_y);
            new_flower.getComponent("anim_controller").play_time = last_it.Time + (it.Time - last_it.Time) * time_scale - 1;
        }
    },

    gen_path(last_it, it) {
        if (last_it.x == it.x){
            var height = it.y - last_it.y + 80;
            var width = 80;
        }else{
            var height = 80;
            var width = it.x - last_it.x + 80;
        }
        var new_path = cc.instantiate(this.path);
        new_path.parent = this.node;
        new_path.width = width;
        new_path.height = height;
        new_path.zIndex = cc.macro.MIN_ZINDEX;
        new_path.setPosition(last_it.x + (it.x - last_it.x) / 2, last_it.y + (it.y - last_it.y) / 2);
    },

    gen_grass(last_it, it) {
        var grass_num = Math.floor((it.Time - last_it.Time) / 2) + 1
        for (var i = 0; i < grass_num; i++){
            var new_grass = cc.instantiate(this.grass);
            new_grass.parent = this.node;
            if (last_it.x == it.x){
                var new_x = last_it.x + Math.random()*100 + 80;
                var new_y = Math.random() * (it.y - last_it.y) + last_it.y;
                var time_scale = (new_y - last_it.y) / (it.y - last_it.y);
            }else{
                var new_y = last_it.y + Math.random()*100 + 80;
                var new_x = Math.random() * (it.x - last_it.x) + last_it.x;
                var time_scale = (new_x - last_it.x) / (it.x - last_it.x);
            }
            new_grass.setPosition(new_x, new_y);
            new_grass.getComponent("anim_controller").play_time = last_it.Time + (it.Time - last_it.Time) * time_scale - 1;
        }
    },


    tran_d(){
        // console.log('Time: ' + this.get_current_time());
        // console.log("x: " + this.player.node.x);
        // console.log("y: " + this.player.node.y);
        this.space_count += 1;
        if (!this.started) {
            this.started = true
            this.player.node.getComponent("player").started = true;
        } else {
            this.player.node.getComponent("player").direction = (this.player.node.getComponent("player").direction + 3) % 2;
        }
        this.current_tail = cc.instantiate(this.tail_block);
        this.current_tail.parent = this.node;
        this.current_tail_start_x = this.player.node.x;
        this.current_tail_start_y = this.player.node.y;
        this.current_tail.setPosition(this.current_tail_start_x, this.current_tail_start_y);
    },

    onKeyDown: function (event) {
        switch (event.keyCode) {
            case cc.macro.KEY.space:
                this.tran_d()
                break;
        }
    },

    get_current_time() {
        return this.audioSource.getCurrentTime()
    },

    update_tail() {
        if (this.current_tail_start_x == this.player.node.x) {
            this.current_tail.width = 30;
        } else {
            this.current_tail.width = this.player.node.x - this.current_tail_start_x + 30;
            this.current_tail.x = this.current_tail_start_x + (this.player.node.x - this.current_tail_start_x) / 2;
        }
        if (this.current_tail_start_y == this.player.node.y) {
            this.current_tail.height = 30;
        } else {
            this.current_tail.height = this.player.node.y - this.current_tail_start_y + 30;
            this.current_tail.y = this.current_tail_start_y + (this.player.node.y - this.current_tail_start_y) / 2;
        }
    },

    update(dt) {
        if (this.player.node.y > 250 && !this.audioSource.isPlaying) {
            this.audioSource.play()
        }
        if (this.current_tail) {
            this.update_tail();
        }
    },
});
