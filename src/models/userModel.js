import { firestore } from '../firebase'
import { CHAPTER_ENUM, ENDING_ENUM } from './storyMap'

export const MOCK_USER_JSON = {
  id: 'asd2312dasd123123asd',
  email: 'test@email.com',
  achievements: [
    {
      createdAt: 'Firebase timestamp',
      updatedAt: 'Firebase timestamp',
      chapter: CHAPTER_ENUM.NADID_CHAPTER_1,
      savedStateId: `asd2312dasd123123asd-${CHAPTER_ENUM.NADID_CHAPTER_1}`,
      endings: [
        {
          id: ENDING_ENUM.ENDING_ONE,
          completedAt: 'Firebase timestamp',
        },
        {
          id: ENDING_ENUM.ENDING_TWO,
          completedAt: 'Firebase timestamp',
        },
      ],
    },
    {
      createdAt: 'Firebase timestamp',
      updatedAt: 'Firebase timestamp',
      chapter: CHAPTER_ENUM.NADID_CHAPTER_2,
      savedStateId: `asd2312dasd123123asd-${CHAPTER_ENUM.NADID_CHAPTER_2}`,
      endings: [
        {
          id: ENDING_ENUM.ENDING_ONE,
          completedAt: 'Firebase timestamp',
        },
        {
          id: ENDING_ENUM.ENDING_TWO,
          completedAt: 'Firebase timestamp',
        },
      ],
    },
    {
      createdAt: 'Firebase timestamp',
      updatedAt: 'Firebase timestamp',
      chapter: CHAPTER_ENUM.DAVID_CHAPTER_2,
      savedStateId: `asd2312dasd123123asd-${CHAPTER_ENUM.DAVID_CHAPTER_2}`,
      endings: [
        {
          id: ENDING_ENUM.ENDING_ONE,
          completedAt: 'Firebase timestamp',
        },
      ],
    },
  ],
}

export const createDbUser = async (obj) => {
  try {
    await firestore.collection('users').doc(obj.id).set(obj)
  } catch (err) {
    console.error(`Error at createDbUser: ${err}`)
  }
}

export const getDbUser = async (objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId)
    const user = await userRef.get()

    if (!user.exists) {
      console.error(`No such document: ${objId}`)
    } else {
      return user.data()
    }
  } catch (err) {
    console.error(`Error at getDbUser: ${err}`)
  }
}

export const updateDbUser = async (obj, objId) => {
  try {
    const userRef = firestore.collection('users').doc(objId || obj.id)
    const user = await userRef.update(obj)

    if (!userRef) {
      console.error(`No such document: ${objId}`)
    } else {
      return user.data()
    }
  } catch (err) {
    console.error(`Error at updateDbUser: ${err}`)
  }
}

export const deleteDbUser = async (userId) => {
  try {
    await firestore.collection('users').doc(userId).delete()
  } catch (err) {
    console.error(`Error at deleteDbUser: ${err}`)
  }
}
