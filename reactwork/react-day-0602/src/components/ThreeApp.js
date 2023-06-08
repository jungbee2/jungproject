import React, { useRef, useState } from 'react';

function ThreeApp(props) {

    //일반 state변수주기
    const [count, setCount] = useState(0);

    //ref 선언하는 법
    const countRef = useRef(0);

    //state 증가함수
    const stateIncre = () => {
        setCount(count + 1); //누를때마다 화면이 계속 렌더링
    }

    //ref 증가함수
    const refIncre = () => {
        countRef.current = countRef.current + 1; // ref변수.current
        console.log("counrRef: " + countRef.current); // 렌더링이 안되므로 콘솔확인
    }
    return (
        <div>
            <h2>ThreeApp_useRef</h2>
            <button type='button' className='btn btn-info'
                onClick={stateIncre}>state변수 증가</button>
            <div>{count}</div>

            <button type='button' className='btn btn-info'
                onClick={refIncre}>ref변수 증가</button>
            <div>{countRef.current}</div>

        </div>
    );
}

export default ThreeApp;