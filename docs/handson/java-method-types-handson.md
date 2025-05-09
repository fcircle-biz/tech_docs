## 【ハンズオン：インスタンスメソッド vs クラスメソッド】

### 目的：

* `インスタンスメソッド`は**オブジェクトを作って使う**
* `クラスメソッド（static）`は**クラスから直接呼べる**

---

## ステップ1：クラスを作る

```java
public class Calculator {
    // インスタンスメソッド
    public int add(int a, int b) {
        return a + b;
    }

    // クラスメソッド（static）
    public static int multiply(int a, int b) {
        return a * b;
    }
}
```

---

## ステップ2：mainメソッドで使い分けを実験

```java
public class Main {
    public static void main(String[] args) {
        // クラスメソッドはインスタンス不要
        int result1 = Calculator.multiply(3, 5);
        System.out.println("3 × 5 = " + result1);

        // インスタンスメソッドを使うにはインスタンス生成が必要
        Calculator calc = new Calculator();
        int result2 = calc.add(3, 5);
        System.out.println("3 + 5 = " + result2);
    }
}
```

---

## ステップ3：違いを体験させる課題

1. `subtract()` という**インスタンスメソッド**を追加してみよう。
2. `divide()` という**staticメソッド**を追加してみよう。
3. `main`メソッドで両方を試してみよう。
4. `Calculator.add(1, 2);` と書いて**エラーになる理由**を考えよう。

---

## ステップ4：まとめて確認

| 比較項目      | インスタンスメソッド     | クラスメソッド（static）   |
| --------- | -------------- | ----------------- |
| 呼び出し方法    | `obj.method()` | `Class.method()`  |
| インスタンス必要？ | 必要             | 不要                |
| 使いどき      | 状態（フィールド）を扱う   | 汎用的な処理（ユーティリティなど） |

