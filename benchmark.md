## 参考にしている kaggle notebook

https://www.kaggle.com/dansbecker/running-kaggle-kernels-with-a-gpu

```python
my_model.fit_generator(train_generator, epochs=5, validation_data=val_generator)
Epoch 1/5
1224/1224 [==============================] - 206s 169ms/step - loss: 1.1439 - acc: 0.6431 - val_loss: 0.5824 - val_acc: 0.8126
Epoch 2/5
1224/1224 [==============================] - 179s 146ms/step - loss: 0.2429 - acc: 0.9186 - val_loss: 0.5081 - val_acc: 0.8492
Epoch 3/5
1224/1224 [==============================] - 182s 148ms/step - loss: 0.1576 - acc: 0.9495 - val_loss: 0.5181 - val_acc: 0.8685
Epoch 4/5
1224/1224 [==============================] - 180s 147ms/step - loss: 0.1417 - acc: 0.9554 - val_loss: 0.4139 - val_acc: 0.8786
Epoch 5/5
1224/1224 [==============================] - 181s 148ms/step - loss: 0.1149 - acc: 0.9647 - val_loss: 0.4319 - val_acc: 0.8948
<keras.callbacks.History at 0x7f5cbb6537b8>
```

GPU spec
- https://www.kaggle.com/product-feedback/83643
- NVIDIA Tesla P100


https://www.kaggle.com/dansbecker/benchmarking-model-training-with-a-cpu

```python
my_model.fit_generator(train_generator, epochs=5, validation_data=val_generator)
Epoch 1/5
1224/1224 [==============================] - 2450s 2s/step - loss: 1.4157 - acc: 0.5518 - val_loss: 0.9130 - val_acc: 0.7239
Epoch 2/5
1224/1224 [==============================] - 2540s 2s/step - loss: 0.3346 - acc: 0.8858 - val_loss: 0.5666 - val_acc: 0.8205
Epoch 3/5
1224/1224 [==============================] - 2469s 2s/step - loss: 0.2030 - acc: 0.9307 - val_loss: 0.5585 - val_acc: 0.8485
Epoch 4/5
1224/1224 [==============================] - 2466s 2s/step - loss: 0.1570 - acc: 0.9487 - val_loss: 0.4305 - val_acc: 0.8669
Epoch 5/5
1224/1224 [==============================] - 2465s 2s/step - loss: 0.1388 - acc: 0.9552 - val_loss: 0.3917 - val_acc: 0.8836
<keras.callbacks.History at 0x7f132d5ecac8>
```

## ワイの環境

WSL2 + docker desktop (kaggle/docker-python GPUコンテナ)

```python
my_model.fit_generator(train_generator, epochs=5, validation_data=val_generator)

/opt/conda/lib/python3.7/site-packages/tensorflow/python/keras/engine/training.py:1844: UserWarning: `Model.fit_generator` is deprecated and will be removed in a future version. Please use `Model.fit`, which supports generators.
  warnings.warn('`Model.fit_generator` is deprecated and '

Epoch 1/5
1224/1224 [==============================] - 1420s 418ms/step - loss: 3.3674 - accuracy: 0.0334 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 2/5
1224/1224 [==============================] - 528s 431ms/step - loss: 3.3675 - accuracy: 0.0337 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 3/5
1224/1224 [==============================] - 519s 424ms/step - loss: 3.3675 - accuracy: 0.0339 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 4/5
1224/1224 [==============================] - 526s 430ms/step - loss: 3.3675 - accuracy: 0.0329 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 5/5
1224/1224 [==============================] - 533s 436ms/step - loss: 3.3675 - accuracy: 0.0345 - val_loss: 3.3673 - val_accuracy: 0.0345
```

## Ubuntu 18.04に変更した後

```
Epoch 1/5
1224/1224 [==============================] - 1048s 127ms/step - loss: 3.3674 - accuracy: 0.0342 - val_loss: 3.3674 - val_accuracy: 0.0345
Epoch 2/5
1224/1224 [==============================] - 62s 50ms/step - loss: 3.3675 - accuracy: 0.0337 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 3/5
1224/1224 [==============================] - 52s 42ms/step - loss: 3.3675 - accuracy: 0.0347 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 4/5
1224/1224 [==============================] - 52s 43ms/step - loss: 3.3675 - accuracy: 0.0338 - val_loss: 3.3673 - val_accuracy: 0.0345
Epoch 5/5
1224/1224 [==============================] - 53s 43ms/step - loss: 3.3675 - accuracy: 0.0337 - val_loss: 3.3673 - val_accuracy: 0.0345
```

