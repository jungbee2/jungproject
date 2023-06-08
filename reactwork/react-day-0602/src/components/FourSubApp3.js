import React from 'react';

function FourSubApp3(props) {
    return (
        <div>
            <button type='button' className='btn tn-info'
                style={{ marginLeft: '50px' }}
                onClick={() => {
                    props.decre(); //부모컴포넌트의 이벤트 발생.. props가 가진 decre를 호출하겠다
                }}>감소</button>


            <button type='button' className='btn tn-info'
                style={{ marginLeft: '50px' }}
                onClick={() => {
                    props.incre();
                }}>증가</button>
        </div>
    );
}

export default FourSubApp3;