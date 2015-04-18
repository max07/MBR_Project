#include <bits/stdc++.h>
#define f first
#define s second
#define mp make_pair
#define pb push_back
using namespace std;

int main() {
  double rating;
    cout<<"Enter rating: ";
    cin>>rating;
    vector<double> criticRating(10197);
    vector<pair<double,int> > orderRating(10197);
// open a file in read mode.
    
    //ifstream infile; 
    //infile.open("rating.txt"); 
    //cout << "Reading from the file" << endl; 
   
    for(int i=0; i < 10197; ++i){
        //infile >> criticRating[i];
        cin>>criticRating[i];
        orderRating(mk(abs(criticRating[i]-rating),i));
    }
    //infile.close();
//
    sort(orderRating.begin(),orderRating.end());
    cout<<"Top 5 recommended movies are: "<<orderRating[0].s<<" "<<orderRating[1].s<<" "<<orderRating[2].s<<" "<<orderRating[3].s<<" "<<orderRating[4].s<<endl;
  return 0;
}
