import React from 'react';
import Alert from '@mui/material/Alert';

import img1 from '../image/01.png';
import img2 from '../image/02.png';
import img3 from '../image/03.png';
import img4 from '../image/04.png';
import img5 from '../image/05.png';

function FiveApp(props) {

    // 이미지를 배열변수에 넣기
    const imgArr=[img1,img2,img3,img4,img5];

    //public 이미지
    const imgArr2=['11','12','13','14','15','16'];

    return (
        <div>
            <Alert severity="warning">FiveApp입니다</Alert>

            <h4>src의 이미지를 배열로 넣어 반복하기</h4>
            <div style={{position:'relative'}}>

                    {
                        // 반복문 리턴에 직접 주는 경우
                        imgArr.map((myimg)=>(<img src={myimg} alt='이미지' style={{width:'100px'}}></img>))            
                    }
            </div>
            
            <h4>public의 이미지를 배열로 넣어 반복하기</h4>
            {
                        // 반복문 리턴에 직접 주는 경우
                        imgArr2.map((photo)=>(<img src={`../image2/${photo}.png`} className='photo2'alt='이미지2' style={{width:'100px'}}></img>))            
                    }
        </div>
    );
}

export default FiveApp;