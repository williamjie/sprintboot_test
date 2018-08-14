/**
 * @fileOverview 选座
 * @time 2018/1/9
 * @author liugang
 * */

import React from 'react';
import {connect} from 'react-redux';


import {getSeat, getPlayCinemaInfo} from '../../actions';

import './index.css';

class seat extends React.Component {

    constructor(){
        super();
        this.state={
            checkedSeat: {},
            seatPrice: 0
        }
    }

    componentDidMount(){
        const {dispatch}=this.props;
        const playId=this.props.match.params.playId;
        dispatch(getSeat(playId));
        dispatch(getPlayCinemaInfo(playId));
    }

    handelSeat(seatInfo){
        let state=this.state;
        let seatKey=`${seatInfo.row}-${seatInfo.column}`;
        let {checkedSeat}=state;

        if(state.checkedSeat[seatKey]){
            delete state.checkedSeat[seatKey];
            this.setState({
                checkedSeat: {
                    ...state.checkedSeat
                }
            })
        }else{
            // 最多购买六张座位
            if(Object.keys(checkedSeat).length==6){
                alert('最多购买六张票！');
                return false;
            }
            this.setState({
                checkedSeat: {
                    ...state.checkedSeat,
                    [seatKey]: seatInfo
                },
                seatPrice: this.props.cinemaInfo.price.maizuo
            })
        }

    }

    render(){
        const {seat, seatRow, cinemaInfo}=this.props;
        const {checkedSeat, seatPrice}=this.state;
        if(!seat){
            return (<div>座位加载中...</div>);
        }

        return (
            <div>
                <div className="seat-cinema">
                    <div>
                        <h1>{cinemaInfo.cinema.name}</h1>
                        <span>{new Date(cinemaInfo.showAt).toString()}</span>
                    </div>
                    <div>
                        <a>换一场</a>
                    </div>
                </div>
                <div className="seat-list">
                    <div className="seat-hall">{cinemaInfo.hall.name}银幕方向</div>
                    <div>
                        <div className="seat-line">
                            {
                                seatRow.map((row, index) => <span key={index}>{row}</span>)
                            }
                        </div>
                        <div>
                            {
                                seat.seats.map(seatRow => (
                                    <ul>
                                        {
                                            seatRow.map(seatColumn => (
                                                <li className={
                                                    checkedSeat[`${seatColumn.row}-${seatColumn.column}`] ? 'active' : ''
                                                } onClick={() => {
                                                    this.handelSeat(seatColumn);
                                                }} key={`${seatColumn.row}-${seatColumn.column}`}></li>
                                            ))
                                        }
                                    </ul>
                                ))
                            }
                        </div>
                    </div>
                </div>
                <div className="seat-checked" style={{display: Object.keys(checkedSeat).length ? 'block' : 'none'}}>
                    <div className="seat-checked-num">
                        {
                            Object.values(checkedSeat).map(item => (<span>{item.row}排{item.column}座</span>))
                        }
                    </div>
                    <div className="seat-price">
                        <span>￥{seatPrice*Object.keys(checkedSeat).length}</span>&nbsp;({seatPrice}*{Object.keys(checkedSeat).length})
                        <a>确认</a>
                    </div>
                </div>
            </div>
        )
    }

}

const mapStateToProps= state => {
    return {
        seat: state.seat.data,
        seatRow: state.seat.seatRow,
        cinemaInfo: state.seat.cinemaInfo
    }
}

export default connect(mapStateToProps)(seat);
