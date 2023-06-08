import React, { useState } from 'react';
import '../App.css';

function OneApp(props) {

    const [number,setNumber]=useState(0);
    
    const numberIncre=()=>{
        if(number<10){
        setNumber(number+1);
        }else{
            alert('최댓값은 10입니다.');
        }
    }

    const numberDecre=()=>{
        if(number>0){
        setNumber(number-1);
        }else{
        alert('최솟값은 0입니다.');
    }
    }

    return (
        <div>
            <h2 className='alert alert-info'>OneApp입니다</h2>
            <div className='number'>{number}</div>
            <button type='button' className='btn btn-default' style={{marginLeft:'60px'}}
            onClick={numberIncre}>증가</button>
            <button type='button' className='btn btn-default' style={{marginLeft:'10px'}}
            onClick={numberDecre}>감소</button>
        </div>
    );
}

export default OneApp;