import React, { useState } from 'react';

function FourthApp(props) {

    const [name,setName] = useState('홍길동');
    const [age,setAge] = useState(22);

    return (
        <div>
            <h1 className='alert alert-info'>FourthApp입니다.</h1>

            <b style={{fontSize:'30px'}}>
                이름: {name} <span style={{marginLeft:'50px'}}></span> 
                나이: {age} 세
            </b>
            <br/><br/>
            <button type='button' className='btn btn-info' style={{marginLeft:'50px'}} onClick={
                ()=>{
                    setName('안정빈');
                    setAge(24);
                }
            }>자기이름으로 변경</button>

            <button type='button' className='btn btn-info' style={{marginLeft:'50px'}} onClick={
                ()=>{
                    setName('홍길동');
                    setAge(22);
                }
            }>초기화</button>
        </div>
    );
}

export default FourthApp;