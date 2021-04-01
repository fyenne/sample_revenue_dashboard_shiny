
// ~ notepad demo.cpp

#include <Rcpp.h>
#include <string>

using namespace std;
using namespace Rcpp;

//[[Rcpp::export]]
string hello(string name) {
  cout << "hello " << name << endl;  
  return name;
}

/*** R
hello('world')
hello('Conan')


*/


// # // 最简单的方法，就是从第一个数n1开始遍历，找到（target-n1）的数的下标;

twoSum(vector<int> &numbers, int target) {
// # // 返回数组，记录两个下标
    vector<int> res {0,0};
    for(int i=0; i<numbers.size(); i++){
      for(int j=i+1; j<numbers.size(); j++){
        if( numbers[j] == (target-numbers[i]) ){
          res[0] = i+1;
          res[1] = j+1;
          return res;
        }
      }
    }
    throw invalid_argument("No two sum solution");

};

/*** R
twoSum(15, 15)
*/