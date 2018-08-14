/**
 * @fileOverview
 * @time 2018/1/9
 * @author liugang
 * */

import {
    GET_SEAT_LIST,
    GET_PLAY_CINEMA_INFO
} from '../actions';

const initialState={};

export default (state=initialState, action) => {

    switch(action.type){

        case GET_PLAY_CINEMA_INFO :
            return Object.assign({}, state, {
                cinemaInfo: action.data
            });
            break;
        case GET_SEAT_LIST :

            // 格式化数据
            let seats=[];
            let seatRow=[];
            let seatRowChildren=[];
            let row=[];
            action.data.seats.map((seatItem, index) => {
                if(!index){
                    seatRow.push(seatItem.row);
                }
                if(seatRow.indexOf(seatItem.row)<0 || (index==action.data.seats.length-1)){
                    seatRow.push(seatItem.row);
                    seats.push(seatRowChildren);
                    seatRowChildren=[];
                }else{
                    seatRowChildren.push(seatItem);
                }
            });

            action.data.seats=seats;
            seatRow.pop();
            return Object.assign({}, state, {
                data: action.data,
                seatRow
            })
            break;
        default :
            return state;
            break;
    }

}
