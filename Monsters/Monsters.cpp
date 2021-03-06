#include <bits/stdc++.h>

int dx[] = {0, -1, 0, 1};
int dy[] = {-1, 0, 1, 0};

struct Monster {
    int x;
    int y;
    int dist;
};

const bool operator<(const Monster &x, const Monster &y) {
    return x.dist > y.dist;
}

int main() {
    int n, m;
    std::cin >> n >> m;
    std::map<int, char> map;
    map[0] = 'L';
    map[1] = 'U';
    map[2] = 'R';
    map[3] = 'D';
    char mat[1001][1001];
    int monsterDist[1001][1001];
    int pathA[1001][1001];
    bool visited[1001][1001];
    int si = -1, sj = -1;
    std::priority_queue<Monster> pq;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            std::cin >> mat[i][j];
            pathA[i][j] = -1;
            visited[i][j] = false;
            monsterDist[i][j] = 1e9;
            if (mat[i][j] == 'M') {
                pq.push({i, j, 0});
                monsterDist[i][j] = 0;
            } else if (mat[i][j] == 'A') {
                si = i;
                sj = j;
                visited[i][j] = true;
            }
        }
    }

    while (!pq.empty()) {
        Monster top = pq.top();
        pq.pop();
        int topi = top.x;
        int topj = top.y;
        int tops = top.dist;

        for (int i = 0; i < 4; i++) {
            int newi = topi + dx[i];
            int newj = topj + dy[i];
            if (newi >= 0 && newi < n && newj >= 0 && newj < m) {
                if (monsterDist[newi][newj] > tops + 1 && mat[newi][newj] != '#') {
                    monsterDist[newi][newj] = tops + 1;
                    pq.push({newi, newj, tops + 1});
                }
            }
        }
    }

    std::queue<int> qi;
    std::queue<int> qj;
    std::queue<int> qs;

    qi.push(si);
    qj.push(sj);
    qs.push(0);
    
    int ei = -1, ej = -1, es = -1;
    while (!qi.empty()) {
        int topi = qi.front();
        int topj = qj.front();
        int tops = qs.front();
        qi.pop();
        qj.pop();
        qs.pop();
        if (topi == n - 1 || topj == m - 1 || topj == 0 || topi == 0) {
            ei = topi;
            ej = topj;
            es = tops;
            break;
        }
        for (int i = 0; i < 4; i++) {
            int newi = topi + dx[i];
            int newj = topj + dy[i];
            if (newi >= 0 && newi < n && newj >= 0 && newj < m) {
                if (!visited[newi][newj] && monsterDist[newi][newj] > tops + 1 && mat[newi][newj] != '#') {
                    qi.push(newi);
                    qj.push(newj);
                    qs.push(tops + 1);
                    pathA[newi][newj] = (i + 2) % 4;
                    visited[newi][newj] = true;
                }
            }
        }
    }
    //std::cout << "ENTERED" << std::endl;
    if (ei == -1) {
        std::cout << "NO" << std::endl;
    } else {
        std::cout << "YES" << std::endl;
        std::cout << es << std::endl;

        std::string res = "";
        while (pathA[ei][ej] != -1) {
            int a = ei, b = ej;
            res += map[(pathA[a][b] + 2) % 4];
            ei += dx[pathA[a][b]];
            ej += dy[pathA[a][b]];
        }
        reverse(res.begin(), res.end());
        std::cout << res << std::endl;
    }
    return 0;
}