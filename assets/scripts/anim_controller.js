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
        play_time: 0
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        this.frame_count = 0;
        this.played = false;
        this.anim = this.getComponent(cc.Animation);
    },

    start () {

    },

    update (dt) {
        this.frame_count += 1
        if (this.frame_count % 30 == 0) {
            this.frame_count = 0;
            if (this.node.parent.getComponent("game").get_current_time() > this.play_time && !this.played){
                this.anim.play();
                this.node.width = 30;
                this.node.height = 30;
                this.played = true;
            }
            
        }
    },
});
