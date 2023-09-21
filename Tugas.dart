// Nomor 2
// Deklarasi fungsi tanpa parameter dan tanpa nilai pengembalian (void).
void sayHello() {
  print("Hello, World!");
}

// Deklarasi fungsi dengan parameter dan nilai pengembalian (int).
int add(int a, int b) {
  return a + b;
}

void main() {
  // Memanggil fungsi sayHello.
  sayHello();

  // Memanggil fungsi add dan menyimpan hasilnya dalam variabel.
  int result = add(5, 3);
  print("Hasil penjumlahan: $result");
}

// Nomor 3
    // Positional Parameters (Parameter Posisional)
    void greet(String greeting, String name) {
      print('$greeting, $name!');
      }

    void main() {
      greet('Hello', 'Alice');
      greet('Hi', 'Bob');
      }

    // Named Parameters (Parameter Nama)
    void greet({String greeting, String name}) {
      print('$greeting, $name!');
      }
    void main() {
      greet(greeting: 'Hello', name: 'Alice');
      greet(name: 'Bob', greeting: 'Hi');
      }

    // Default Parameters (Parameter Default)
    void greet(String greeting, {String name = 'Guest'}) {
      print('$greeting, $name!');
      }
      void main() {
        greet('Hello'); // Menggunakan nilai default untuk name
        greet('Hi', name: 'Alice'); // Menimpa nilai default
        }

    // Required Parameters (Parameter Wajib)
    void greet(String greeting, {String name}) {
      print('$greeting, $name!');
      }
      void main() {
        greet('Hello', name: 'Alice');
        greet('Hi'); // Error: The argument 'name' must be provided.
        }
    // Rest Parameters (Parameter Sisa)
    void printNumbers(String message, int initial, List<int> numbers) {
      print(message);
      for (var number in numbers) {
        print(number);
        }
      }
    void main() {
      printNumbers('Numbers:', 1, [2, 3, 4, 5]);
      }

// Nomor 4
    // Menyimpan Fungsi dalam Variabel
    int add(int a, int b) {
      return a + b;
    }

    var myFunction = add;
    print(myFunction(3, 4)); // Output: 7

    // Mengirim Fungsi sebagai Argumen
    void performOperation(int x, int y, Function operation) {
      print(operation(x, y));
    }

    int add(int a, int b) {
      return a + b;
    }

    int subtract(int a, int b) {
      return a - b;
    }

    performOperation(5, 3, add);      // Output: 8
    performOperation(5, 3, subtract); // Output: 2

    // Mengembalikan Fungsi dari Fungsi
    Function getOperation(String operationType) {
      if (operationType == "add") {
        return (int a, int b) => a + b;
      } else if (operationType == "subtract") {
        return (int a, int b) => a - b;
      } else {
        return (int a, int b) => 0;
      }
    }

    var addFunction = getOperation("add");
    print(addFunction(5, 3)); // Output: 8

    // Menyimpan Fungsi dalam List
    int add(int a, int b) {
      return a + b;
    }

    int multiply(int a, int b) {
      return a * b;
    }

    List<Function> operations = [add, multiply];

    print(operations[0](3, 4)); // Output: 7

// Nomor 5
    // Anonymous Function Sebagai Argumen
    void main() {
      var numbers = [1, 2, 3, 4, 5];

      // Menggunakan anonymous function untuk menggandakan setiap elemen list.
      var doubledNumbers = numbers.map((number) => number * 2);

      print(doubledNumbers); // Output: (2, 4, 6, 8, 10)
    }

    // Anonymous Function dalam Fungsi Lain
    void main() {
      // Membuat fungsi yang menerima anonymous function sebagai parameter.
      void performOperation(int a, int b, Function operation) {
        print(operation(a, b));
      }

      // Menggunakan anonymous function untuk menjumlahkan dua angka.
      performOperation(3, 4, (a, b) => a + b); // Output: 7

      // Menggunakan anonymous function untuk mengalikan dua angka.
      performOperation(3, 4, (a, b) => a * b); // Output: 12
    }

    // Anonymous Function Sebagai Variabel
    void main() {
      // Menyimpan anonymous function dalam variabel.
      var greet = (String name) {
        print('Hello, $name!');
      };

      // Menggunakan variabel yang berisi anonymous function.
      greet('Alice'); // Output: Hello, Alice!
    }

// Nomor 6
    // Lexical Scope
    function outer() {
      var x = 10;

      function inner() {
        console.log(x); // x diakses dari lingkup leksikal (outer)
      }

      inner();
    }

    outer(); // Output: 10

    // Lexical Closures
    function outer() {
      var x = 10;

      function inner() {
        console.log(x); // x diakses dari closure (lingkup leksikal yang masih "diingat" oleh inner)
      }

      return inner;
    }

    var closureFunction = outer();
    closureFunction(); // Output: 10

// Nomor 7
    // Menggunakan List atau Tuple
    List<int> calculate(int a, int b) {
      int sum = a + b;
      int difference = a - b;
      return [sum, difference];
    }

    void main() {
      var result = calculate(10, 5);
      int sum = result[0];
      int difference = result[1];

      print('Sum: $sum');
      print('Difference: $difference');
    }

    // Menggunakan Map
    Map<String, int> calculate(int a, int b) {
      int sum = a + b;
      int difference = a - b;
      return {'sum': sum, 'difference': difference};
    }

    void main() {
      var result = calculate(10, 5);
      int sum = result['sum'];
      int difference = result['difference'];

      print('Sum: $sum');
      print('Difference: $difference');
    }

    // Menggunakan Class atau Object
    class CalculationResult {
      int sum;
      int difference;

      CalculationResult(this.sum, this.difference);
    }

    CalculationResult calculate(int a, int b) {
      int sum = a + b;
      int difference = a - b;
      return CalculationResult(sum, difference);
    }

    void main() {
      var result = calculate(10, 5);

      print('Sum: ${result.sum}');
      print('Difference: ${result.difference}');
    }
