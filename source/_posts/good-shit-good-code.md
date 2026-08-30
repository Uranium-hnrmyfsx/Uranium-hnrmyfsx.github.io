---
title: 能过评测的史山就是好代码
date: 2026-08-30 12:35:01
tags:
  - C++
  - GESP
---

# 能过评测的史山就是好代码

```c++
#include <bits/stdc++.h>
using namespace std;

int n, m, h[114][114], cnt;

int where(int x, int y){
    if(x == 1){
        if(y == 1){
            return 1;
        }
        if(y == m){
            return 3;
        }
        return 2;
    }
    if(x == n){
        if(y == 1){
            return 7;
        }
        if(y == m){
            return 9;
        }
        return 8;        
    }
    if(y == 1){
        return 4;
    }
    if(y == m){
        return 6;
    }
    return 5;

}

int main(){
    cin >> n >> m;
    for(int i = 1; i <= n; i++){
        for(int j = 1; j <= m; j++){
            cin >> h[i][j];
        }
    }

    //  n = 1 和 m = 1特判
    if(n == 1 || m == 1){
        int cct = 0;
        if(n == 1 && m == 1){
            cout << 1;
            return 0;
        }
        if(n == 1){
            for(int i = 1; i <= m; i++){
                if(i != m){
                    if(h[1][i + 1] < h[1][i]){
                        //cout << "i:" << i << endl;
                        continue;
                    }
                }
                if(i != 1){
                    if(h[1][i - 1] < h[1][i]){
                        //cout << "i:" << i << endl;
                        continue;
                    }
                }
                //cout << 3;
                cct++;
            }
        }
        if(m == 1){
            for(int i = 1; i <= n; i++){
                if(i != n){
                    if(h[i + 1][1] < h[i][1]){
                        //cout << "i:" << i << endl;
                        continue;
                    }
                }
                if(i != 1){
                    if(h[i - 1][1] < h[i][1]){
                        //cout << "i:" << i << endl;
                        continue;
                    }
                }
                //cout << 4;
                cct++;
            }
        }
        cout << cct;
        return 0;
    }

    //  常规判断
    for(int i = 1; i <= n; i++){
        for(int j = 1; j <= m; j++){
            bool f = 0;
            //  1
            if(where(i, j) == 1){
                for(int q = i; q <= i + 1; q++){
                    for(int w = j; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  2
            if(where(i, j) == 2){
                for(int q = i; q <= i + 1; q++){
                    for(int w = j - 1; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  3
            if(where(i, j) == 3){
                for(int q = i; q <= i + 1; q++){
                    for(int w = j - 1; w <= j; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  4
            if(where(i, j) == 4){
                for(int q = i - 1; q <= i + 1; q++){
                    for(int w = j; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  5
            if(where(i, j) == 5){
                for(int q = i - 1; q <= i + 1; q++){
                    for(int w = j - 1; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  6
            if(where(i, j) == 6){
                for(int q = i - 1; q <= i + 1; q++){
                    for(int w = j - 1; w <= j; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  7
            if(where(i, j) == 7){
                for(int q = i - 1; q <= i; q++){
                    for(int w = j; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  8
            if(where(i, j) == 8){
                for(int q = i - 1; q <= i; q++){
                    for(int w = j - 1; w <= j + 1; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            //  9
            if(where(i, j) == 9){
                for(int q = i - 1; q <= i; q++){
                    for(int w = j - 1; w <= j; w++){
                        if(h[i][j] > h[q][w]){
                            f = 1;
                            break;
                        }
                    }
                    if(f == 1){
                        break;
                    }
                }
            }
            if(f != 1){
                cnt++;
            }
        }
    }
    cout << cnt;
}
```

