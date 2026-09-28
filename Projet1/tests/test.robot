*** Settings ***
Documentation    fichier de test
Library    ../biblio.py
Resource    ../resources/keyword.resource

***Test Cases***
TestExo
    Saluer
    Parler    fatma
TestSomme
    Calculer    2    3
TestAge
    RecupererAge


    