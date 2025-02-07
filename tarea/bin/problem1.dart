
int fib(int n){

  if( n<2 ){
    return n;
  }
  else {
    return fib(n-1) + fib(n-2);
  }
}

void main(List<String> arguments) {
  
  final int n=15;
  for(int i=0; i<=n; i++){
    print('${fib(i)} ');
  }
}

