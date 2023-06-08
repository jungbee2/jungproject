import React, { useState } from 'react';

function FifthApp(props) {

    const [name, setName] = useState('');
    const [java, setJava] = useState('');
    const [spring, setSpring] = useState('');
    const [total, setTotal] = useState(0);
    const [avg, setAvg] = useState(0);

    return (
        <div>
        <div>
            <h2 className='alert alert-danger'>FifthApp 입니다.</h2>
            <b style={{ fontSize: '1.5em' }}>이름:</b> <input type='text' style={{ width: '200px', fontSize: '1.5em' }}
                defaultValue={name} onChange={(e) => {
                    setName(e.target.value);
                }}
            />
            <b style={{ color: 'green', marginLeft: '20px', fontSize: '1.5em' }}>{name}</b>
            <br /><br />

            <b style={{ fontSize: '1.5em' }}>자바:</b> <input type='text' style={{ width: '200px', fontSize: '1.5em' }}
                defaultValue={java} onChange={(e) => {
                    setJava(e.target.value);
                }}
            />
            <b style={{ color: 'green', marginLeft: '20px', fontSize: '1.5em' }}>{java}</b>
            <br /><br />

            <b style={{ fontSize: '1.5em' }}>스프링:</b> <input type='text' style={{ width: '200px', fontSize: '1.5em' }}
                defaultValue={spring} onChange={(e) => {
                    setSpring(e.target.value);
                }}
            />
            <b style={{ color: 'green', marginLeft: '20px', fontSize: '1.5em' }}>{spring}</b>
            <br /><br />
            <button type='button' className='btn btn-info'
            onClick={()=>{
                    setTotal(Number(java)+Number(spring));
                    setAvg((Number(java)+Number(spring))/2);
            }}>결과확인</button>
        </div>
        <br />
        <div className='result'>
        이름: {name}<br/>
        자바점수: {java}점<br/>
        스프링점수: {spring}점<br/>
        총점: {total}점<br/>
        평균: {avg}점 
        </div>
    </div>   
    );
}

export default FifthApp;