# demo_bloc

Demo Bloc Flow

## Getting Started

Project này dùng để demo data flow trong BLOC. Video demo: 



https://user-images.githubusercontent.com/69671870/124881910-114cdc80-dffa-11eb-8676-9714afece967.mov


## Các file thao tác với Bloc

1. Thư mục Bloc

  - `counter_event`: Khai báo các actions để thao tác với Bloc
  - `counter_state`: Khai báo initial state của Bloc 
  - `counter_bloc`: implement các thao tác được bắn ra từ `counter_event`
  <img width="200" alt="Screen Shot 2021-07-08 at 14 50 49" src="https://user-images.githubusercontent.com/69671870/124883792-e5325b00-dffb-11eb-8aed-57a58a02189b.png">

2. Lắng nghe và thay đổi state của Bloc từ màn hình
  - `home_screen`: Thao t với counter
 
  ![image](https://user-images.githubusercontent.com/69671870/124884063-232f7f00-dffc-11eb-8476-bc464678100a.png)
  - `account_screen`: Lắng nghe data từ `counter_bloc` bằng `BlocBuilder`
  
  ![image](https://user-images.githubusercontent.com/69671870/124884331-5eca4900-dffc-11eb-859a-2eea8fcf1689.png)
