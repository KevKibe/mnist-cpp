#include "data.hpp"

data::data()
{
    feature_vector = new std::vector<uint8_t>;
}

data::~data()
{

}

void data::set_feature_vector(std::vector<uint8_t> *vect)
{
    feature_vector = vect;
}

void data::append_feature_vector(uint8_t val)
{
    feature_vector->push_back(val);
}

void data::set_label(uint8_t val)
{
    label = val;
}

void data::set_enumerated_label(int val)
{
    enum_label = val;
}

int data::get_feature_vectore_size()
{
    return feature_vector->size();
}

uint8_t data::get_label()
{
    return label;
}

uint8_t data::get_enumerated_label()
{
    return enum_label;
}

std::vector<uint8_t> * data::get_feature_vectore()
{
    return feature_vector; 
}