import React, { useState } from 'react';
import FourSubApp from './FourSubApp';
import FourSubApp2 from './FourSubApp2';
import FourSubApp3 from './FourSubApp3';

function FourApp(props) {

    //state 변수 선언
    const [number, setNumber] = useState(10);


    //증가
    const numberIncre = () => {
        setNumber(number + 1);
    }

    //감소
    const numberDecre = () => {
        setNumber(number - 1);
    }


    return (
        <div>
            <h4 className='alert alert-info'>
                FourApp_부모가 자식에게 전달할때(props) 이건 자식입장에서는
                읽기전용(출력은 가능, 변경은 불가능)
                만약 자식콤포넌트에서 부모에게 전달하고자 할때 이벤트를 통해서
                부모데이터 변경가능(props는 이벤트도 전달가능)
            </h4>
            <FourSubApp name="길동" age="26" />
            <FourSubApp name="민지" age="28" />
            <FourSubApp name="예나" age="25" />
            {/* props변수로 name, age 전달 */}
            <br /><br />
            <FourSubApp2 food="평양냉면" price="15000" />
            <FourSubApp2 food="떡볶이" price="8000" />
            <FourSubApp2 food="샌드위치" price="7000" />
            <br /><br />
            <h1 style={{color:'red'}}>{number}</h1>
            <FourSubApp3 incre={numberIncre} decre={numberDecre} />
        </div>
    );
}

export default FourApp;