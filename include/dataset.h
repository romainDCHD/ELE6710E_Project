#pragma once

#include <vector>
#include <string> // Ajoutez ceci pour vous assurer que std::string est connu

// using namespace std; // Supprimez ou commentez cette ligne

enum Datatype {
    TRAIN,
    TEST
};

class Dataset {
public:
    Dataset(std::string filename); // Utilisez std::string ici
    ~Dataset();

    const std::vector<const std::vector<double>*>& getIns(Datatype d) const;
    const std::vector<const std::vector<double>*>& getOuts(Datatype d) const;

    void split(double ptrain);

private:
    std::vector<std::vector<double>> _ins;
    std::vector<std::vector<double>> _outs;

    std::vector<const std::vector<double>*> _train_ins;
    std::vector<const std::vector<double>*> _train_outs;

    std::vector<const std::vector<double>*> _test_ins;
    std::vector<const std::vector<double>*> _test_outs;
};
