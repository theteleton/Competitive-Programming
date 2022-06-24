#include <iostream>
#include <vector>
#include <queue>

int main() {
    std::ios_base::sync_with_stdio(false);
    std::cin.tie();
    std::cout.tie();

    int n, m;
    std::cin >> n >> m;

    long long mat[505][505];

    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            mat[i][j] = 0;
        }
    }

    for (int i = 0; i < m; i++) {
        int a, b;
        long long c;
        std::cin >> a >> b;
        std::cin >> c;

        mat[a][b] += c;
    }


    long long res = 0;

    bool there_is_path = true;

    while(there_is_path) {
        std::queue<int> qi;
        qi.push(1);
        std::queue<long long> qs;
        qs.push(0);

        std::vector<long long> distances(n + 1, 1e18);
        std::vector<int> parent(n + 1, -1);
        std::vector<bool> vis(n + 1, false);
        vis[1] = true;
        distances[1] = 0;
        while (!qi.empty()) {
            int topi = qi.front();
            qi.pop();
            int tops = qs.front();
            qs.pop();
            // std::cout << topi << " " << tops << "\n";
            for (int i = 1; i <= n; i++) {
                if (mat[topi][i] != 0 and !vis[i]) {
                    distances[i] = tops + mat[topi][i];
                    qs.push(tops + mat[topi][i]);
                    qi.push(i);
                    parent[i] = topi;
                    vis[i] = true;
                }
            }
        }
        if (distances[n] == 1e18) {
            break;
        }

        int y = n;
        long long min = 1e18;
        while (parent[y] != -1) {
            min = std::min(min, mat[parent[y]][y]);
            y = parent[y];
        }
        y = n;
        while (parent[y] != -1) {
            mat[parent[y]][y] -= min;
            mat[y][parent[y]] += min;
            y = parent[y];
        }
        res += min;
    }
    std::cout << res << "\n";
    return 0;
}