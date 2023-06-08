import axios from 'axios';
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

function ShopForm(props) {

  //DB명과 일치하는 멤버 변수 선언
  const [photo, setPhoto] = useState('');
  const [sangpum, setSangpum] = useState('');
  const [su, setSu] = useState('');
  const [dan, setDan] = useState('');



  //이동에 필요한 navi
  const navi = useNavigate();

  //url등록
  let uploadUrl = "http://localhost:9001/shop/upload"; //백엔드 주소
  let photoUrl = "http://localhost:9001/save/"; // 사진주소

  let insertUrl = "http://localhost:9001/shop/insert";


  //FileChange 호출이벤트
  const uploadImage = (e) => {
    const uploadFiles = e.target.files[0]; //파일명
    const imageFile = new FormData(); //FormData 객체 생성
    imageFile.append("uploadFile", uploadFiles); //uploadFile 키값



    axios({
      method: "post",
      url: uploadUrl,
      data: imageFile,
      headers: { "Content-Type": "multipart/form-data" }
    }).then(res => {
      setPhoto(res.data); //사진, 백엔드에서 보낸 변경된이미지명을 photo에 저장
    }).catch(err => {
      alert(err);
    });
    
  }

  //추가하는 함수이벤트
  //추가 후 목록으로 이동
  const onInsert=()=>{
    axios.post(insertUrl,{sangpum,su,dan})
    .then(res=>{
      //인서트 성공후 처리할 코드넣기,
      //목록으로 이동
      navi("/shop/list");
    })
  }

  return (
    <div>
      <table className='table table-bordered' style={{ width: '600px' }}>
        <caption><b>상품등록</b></caption>
        <tbody>
          <tr>
            <th width='90' style={{ backgroundColor: '#ffc' }}>상품명</th>
            <td width='300'>
              <input type='text' className='form-control' style={{ width: '250px' }}
              onChange={(e)=>{
                setSangpum(e.target.value);
              }} />
            </td>
            <th></th>
          </tr>

          <tr>
            <th width='90' style={{ backgroundColor: '#ffc' }}>상품사진</th>
            <td width='300'>
              <input type='file' className='form-control' style={{ width: '200px' }}
                onChange={uploadImage} />
            </td>
            <th></th>
          </tr>

          <tr>
            <th width='90' style={{ backgroundColor: '#ffc' }}>단가</th> {/* Fix: Added closing tag */}
            <td width='300'>
              <input type='text' className='form-control' style={{ width: '150px' }} 
              onChange={(e)=>{
                setDan(e.target.value);
              }}/>
            </td>
            <th></th>
          </tr>

          <tr>
            <th width='90' style={{ backgroundColor: '#ffc' }}>수량</th>
            <td width='300'>
              <input type='text' className='form-control' style={{ width: '250px' }}
              onChange={(e)=>{
                setSu(e.target.value);
              }} />
            </td>
            <th></th>
          </tr>


          <tr style={{ width: '160px' }}>
            <td colSpan='2'>
              <img src={photoUrl + photo} alt="이미지" style={{ width: '120px', marginLeft: '120px' }}
                onChange={(e)=>{
                  setPhoto(e.target.value);
                }} />
            </td>

            <td>
              <button type='button' className='btn btn-primary'
                style={{ width: '120px', height: '120px', marginLeft: '30px' }} onClick={onInsert}
                >상품등록</button>
            </td>
          </tr>

        </tbody>
      </table>
    </div>
  );
}

export default ShopForm;
