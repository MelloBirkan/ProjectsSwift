import Foundation

func multiplicarElemento(i: Int, j: Int, matrizA: [[Int]], matrizB: [[Int]], matrizC: inout [[Int]]) {
    for k in 0..<matrizA[0].count {
        matrizC[i][j] += matrizA[i][k] * matrizB[k][j]
    }
}

func multiplicarMatrizes(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    let linhasA = matrizA.count
    let colunasA = matrizA[0].count
    let linhasB = matrizB.count
    let colunasB = matrizB[0].count

    if colunasA != linhasB {
        print("Matriz não multiplicável")
        return nil
    }

    var matrizC = Array(repeating: Array(repeating: 0, count: colunasB), count: linhasA)

    let group = DispatchGroup()
    for i in 0..<linhasA {
        for j in 0..<colunasB {
            group.enter()
            DispatchQueue.global(qos: .userInitiated).async {
                multiplicarElemento(i: i, j: j, matrizA: matrizA, matrizB: matrizB, matrizC: &matrizC)
                group.leave()
            }
        }
    }
    group.wait()

    return matrizC
}

func main() {
    let matrizA = [[1, 2], [3, 4]]
    let matrizB = [[5, 6], [7, 8]]

    if let resultado = multiplicarMatrizes(matrizA: matrizA, matrizB: matrizB) {
        print("Resultado:")
        for linha in resultado {
            print(linha.map { String($0) }.joined(separator: " "))
        }
    }
}

main()
